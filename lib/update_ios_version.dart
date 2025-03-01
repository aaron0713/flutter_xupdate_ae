// To parse this JSON data, do
//
//     final updateIosVersion = updateIosVersionFromJson(jsonString);

import 'dart:convert';

UpdateIosVersion updateIosVersionFromJson(String str) => UpdateIosVersion.fromJson(json.decode(str));

String updateIosVersionToJson(UpdateIosVersion data) => json.encode(data.toJson());

class UpdateIosVersion {
  List<String>? screenshotUrls;
  List<String>? ipadScreenshotUrls;
  List<String>? appletvScreenshotUrls;
  String? artworkUrl512;
  bool? isGameCenterEnabled;
  List<String>? supportedDevices;
  List<String>? features;
  List<String>? advisories;
  String? kind;
  String? artistViewUrl;
  String? artworkUrl60;
  String? artworkUrl100;
  String? trackCensoredName;
  String? trackViewUrl;
  double? averageUserRatingForCurrentVersion;
  String? sellerUrl;
  List<String>? languageCodesIso2A;
  String? fileSizeBytes;
  String? formattedPrice;
  int? userRatingCountForCurrentVersion;
  String? trackContentRating;
  String? minimumOsVersion;
  int? artistId;
  String? artistName;
  List<String>? genres;
  double? price;
  String? bundleId;
  int? trackId;
  String? trackName;
  bool? isVppDeviceBasedLicensingEnabled;
  DateTime? releaseDate;
  String? primaryGenreName;
  int? primaryGenreId;
  String? sellerName;
  List<String>? genreIds;
  DateTime? currentVersionReleaseDate;
  String? releaseNotes;
  String? version;
  String? wrapperType;
  String? currency;
  String? description;
  String? contentAdvisoryRating;
  double? averageUserRating;
  int? userRatingCount;

  UpdateIosVersion({
    this.screenshotUrls,
    this.ipadScreenshotUrls,
    this.appletvScreenshotUrls,
    this.artworkUrl512,
    this.isGameCenterEnabled,
    this.supportedDevices,
    this.features,
    this.advisories,
    this.kind,
    this.artistViewUrl,
    this.artworkUrl60,
    this.artworkUrl100,
    this.trackCensoredName,
    this.trackViewUrl,
    this.averageUserRatingForCurrentVersion,
    this.sellerUrl,
    this.languageCodesIso2A,
    this.fileSizeBytes,
    this.formattedPrice,
    this.userRatingCountForCurrentVersion,
    this.trackContentRating,
    this.minimumOsVersion,
    this.artistId,
    this.artistName,
    this.genres,
    this.price,
    this.bundleId,
    this.trackId,
    this.trackName,
    this.isVppDeviceBasedLicensingEnabled,
    this.releaseDate,
    this.primaryGenreName,
    this.primaryGenreId,
    this.sellerName,
    this.genreIds,
    this.currentVersionReleaseDate,
    this.releaseNotes,
    this.version,
    this.wrapperType,
    this.currency,
    this.description,
    this.contentAdvisoryRating,
    this.averageUserRating,
    this.userRatingCount,
  });

  factory UpdateIosVersion.fromJson(Map<String, dynamic> json) => UpdateIosVersion(
    screenshotUrls: json["screenshotUrls"] == null ? [] : List<String>.from(json["screenshotUrls"]!.map((x) => x)),
    ipadScreenshotUrls:
        json["ipadScreenshotUrls"] == null ? [] : List<String>.from(json["ipadScreenshotUrls"]!.map((x) => x)),
    appletvScreenshotUrls:
        json["appletvScreenshotUrls"] == null ? [] : List<String>.from(json["appletvScreenshotUrls"]!.map((x) => x)),
    artworkUrl512: json["artworkUrl512"],
    isGameCenterEnabled: json["isGameCenterEnabled"],
    supportedDevices:
        json["supportedDevices"] == null ? [] : List<String>.from(json["supportedDevices"]!.map((x) => x)),
    features: json["features"] == null ? [] : List<String>.from(json["features"]!.map((x) => x)),
    advisories: json["advisories"] == null ? [] : List<String>.from(json["advisories"]!.map((x) => x)),
    kind: json["kind"],
    artistViewUrl: json["artistViewUrl"],
    artworkUrl60: json["artworkUrl60"],
    artworkUrl100: json["artworkUrl100"],
    trackCensoredName: json["trackCensoredName"],
    trackViewUrl: json["trackViewUrl"],
    averageUserRatingForCurrentVersion: json["averageUserRatingForCurrentVersion"]?.toDouble(),
    sellerUrl: json["sellerUrl"],
    languageCodesIso2A:
        json["languageCodesISO2A"] == null ? [] : List<String>.from(json["languageCodesISO2A"]!.map((x) => x)),
    fileSizeBytes: json["fileSizeBytes"],
    formattedPrice: json["formattedPrice"],
    userRatingCountForCurrentVersion: json["userRatingCountForCurrentVersion"],
    trackContentRating: json["trackContentRating"],
    minimumOsVersion: json["minimumOsVersion"],
    artistId: json["artistId"],
    artistName: json["artistName"],
    genres: json["genres"] == null ? [] : List<String>.from(json["genres"]!.map((x) => x)),
    price: json["price"],
    bundleId: json["bundleId"],
    trackId: json["trackId"],
    trackName: json["trackName"],
    isVppDeviceBasedLicensingEnabled: json["isVppDeviceBasedLicensingEnabled"],
    releaseDate: json["releaseDate"] == null ? null : DateTime.parse(json["releaseDate"]),
    primaryGenreName: json["primaryGenreName"],
    primaryGenreId: json["primaryGenreId"],
    sellerName: json["sellerName"],
    genreIds: json["genreIds"] == null ? [] : List<String>.from(json["genreIds"]!.map((x) => x)),
    currentVersionReleaseDate:
        json["currentVersionReleaseDate"] == null ? null : DateTime.parse(json["currentVersionReleaseDate"]),
    releaseNotes: json["releaseNotes"],
    version: json["version"],
    wrapperType: json["wrapperType"],
    currency: json["currency"],
    description: json["description"],
    contentAdvisoryRating: json["contentAdvisoryRating"],
    averageUserRating: json["averageUserRating"]?.toDouble(),
    userRatingCount: json["userRatingCount"],
  );

  Map<String, dynamic> toJson() => {
    "screenshotUrls": screenshotUrls == null ? [] : List<dynamic>.from(screenshotUrls!.map((x) => x)),
    "ipadScreenshotUrls": ipadScreenshotUrls == null ? [] : List<dynamic>.from(ipadScreenshotUrls!.map((x) => x)),
    "appletvScreenshotUrls":
        appletvScreenshotUrls == null ? [] : List<dynamic>.from(appletvScreenshotUrls!.map((x) => x)),
    "artworkUrl512": artworkUrl512,
    "isGameCenterEnabled": isGameCenterEnabled,
    "supportedDevices": supportedDevices == null ? [] : List<dynamic>.from(supportedDevices!.map((x) => x)),
    "features": features == null ? [] : List<dynamic>.from(features!.map((x) => x)),
    "advisories": advisories == null ? [] : List<dynamic>.from(advisories!.map((x) => x)),
    "kind": kind,
    "artistViewUrl": artistViewUrl,
    "artworkUrl60": artworkUrl60,
    "artworkUrl100": artworkUrl100,
    "trackCensoredName": trackCensoredName,
    "trackViewUrl": trackViewUrl,
    "averageUserRatingForCurrentVersion": averageUserRatingForCurrentVersion,
    "sellerUrl": sellerUrl,
    "languageCodesISO2A": languageCodesIso2A == null ? [] : List<dynamic>.from(languageCodesIso2A!.map((x) => x)),
    "fileSizeBytes": fileSizeBytes,
    "formattedPrice": formattedPrice,
    "userRatingCountForCurrentVersion": userRatingCountForCurrentVersion,
    "trackContentRating": trackContentRating,
    "minimumOsVersion": minimumOsVersion,
    "artistId": artistId,
    "artistName": artistName,
    "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
    "price": price,
    "bundleId": bundleId,
    "trackId": trackId,
    "trackName": trackName,
    "isVppDeviceBasedLicensingEnabled": isVppDeviceBasedLicensingEnabled,
    "releaseDate": releaseDate?.toIso8601String(),
    "primaryGenreName": primaryGenreName,
    "primaryGenreId": primaryGenreId,
    "sellerName": sellerName,
    "genreIds": genreIds == null ? [] : List<dynamic>.from(genreIds!.map((x) => x)),
    "currentVersionReleaseDate": currentVersionReleaseDate?.toIso8601String(),
    "releaseNotes": releaseNotes,
    "version": version,
    "wrapperType": wrapperType,
    "currency": currency,
    "description": description,
    "contentAdvisoryRating": contentAdvisoryRating,
    "averageUserRating": averageUserRating,
    "userRatingCount": userRatingCount,
  };
}
