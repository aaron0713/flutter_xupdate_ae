import 'dart:convert' show jsonDecode, utf8;
import 'dart:io' show HttpClient, HttpClientRequest, HttpClientResponse;

import 'package:flutter/cupertino.dart'
    show BuildContext, CupertinoAlertDialog, CupertinoDialogAction, Navigator, Text, showCupertinoDialog;
import 'package:flutter_xupdate_ae/flutter_xupdate.dart' show ErrorHandler;
import 'package:flutter_xupdate_ae/update_ios_version.dart';
import 'package:package_info_plus/package_info_plus.dart' show PackageInfo;
import 'package:url_launcher/url_launcher.dart' show canLaunchUrl, launchUrl;

class FlutterIOSUpdate {
  static checkUpdate({required String bundleId, ErrorHandler? onUpdateError, BuildContext? context}) async {
    // 获取本地版本
    var localVersion = (await PackageInfo.fromPlatform()).version;
    // 获取 App Store 版本
    var storeVersion = await getAppStoreVersion(bundleId);
    if (storeVersion != null && storeVersion.version != null) {
      if (isUpdateAvailable(localVersion, storeVersion.version!)) {
        var storeUrl = "https://apps.apple.com/app/id${storeVersion.trackId}";
        if (context != null) {
          showCupertinoDialog(
            context: context,
            builder:
                (context) => CupertinoAlertDialog(
                  title: Text('发现新版本：${storeVersion.version}'),
                  content: Text(storeVersion.releaseNotes ?? ""),
                  actions: [
                    CupertinoDialogAction(onPressed: () => Navigator.pop(context), child: Text('取消')),
                    CupertinoDialogAction(
                      onPressed: () async {
                        if (await canLaunchUrl(Uri.parse(storeUrl))) {
                          await launchUrl(Uri.parse(storeUrl));
                        }
                        Navigator.pop(context);
                      },
                      child: Text('更新'),
                    ),
                  ],
                ),
          );
        } else {
          if (await canLaunchUrl(Uri.parse(storeUrl))) {
            await launchUrl(Uri.parse(storeUrl));
          } else {
            onUpdateError?.call({"code": 3000, "message": "跳转失败，请打开App Store手动更新"});
          }
        }
      } else {
        onUpdateError?.call({"code": 2005, "message": "获取AppStore版本失败"});
      }
    } else {
      onUpdateError?.call({"code": 2004, "message": "无最新版本"});
    }
  }

  static Future<UpdateIosVersion?> getAppStoreVersion(String bundleId) async {
    final url = 'https://itunes.apple.com/lookup?bundleId=$bundleId';
    try {
      HttpClient client = HttpClient();
      HttpClientRequest request = await client.getUrl(Uri.parse(url));
      HttpClientResponse response = await request.close();
      if (response.statusCode == 200) {
        String responseBody = await response.transform(utf8.decoder).join();
        final data = jsonDecode(responseBody);
        if (data['resultCount'] > 0) {
          return UpdateIosVersion.fromJson(data['results'][0]);
        }
      }
      return null;
    } catch (e) {
      print('Error fetching App Store version: $e');
      return null;
    }
  }

  static bool isUpdateAvailable(String localVersion, String storeVersion) {
    final localParts = localVersion.split('.').map(int.parse).toList();
    final storeParts = storeVersion.split('.').map(int.parse).toList();

    for (int i = 0; i < storeParts.length; i++) {
      final local = i < localParts.length ? localParts[i] : 0;
      if (storeParts[i] > local) return true;
      if (storeParts[i] < local) return false;
    }
    return false;
  }

  Future<String> getLocalVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
