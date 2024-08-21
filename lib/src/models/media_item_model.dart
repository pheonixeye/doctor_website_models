class MediaItem {
  final String? id;
  final String titleEn;
  final String titleAr;
  final String descriptionEn;
  final String descriptionAr;
  final String src;
  final bool isLong;
  final String thumbnail;
  final String timeadded;

  MediaItem({
    this.id,
    required this.titleEn,
    required this.titleAr,
    required this.descriptionEn,
    required this.descriptionAr,
    required this.src,
    required this.isLong,
    required this.thumbnail,
    required this.timeadded,
  });

  static MediaItem fromJson(dynamic json) {
    return MediaItem(
      id: json['_id'],
      titleEn: json['titleen'],
      titleAr: json['titlear'],
      descriptionEn: json['descriptionen'],
      descriptionAr: json['descriptionar'],
      src: json['src'],
      isLong: json['islong'],
      thumbnail: json['thumbnail'],
      timeadded: json['timeadded'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'titleen': titleEn,
      'titlear': titleAr,
      'descriptionen': descriptionEn,
      'descriptionar': descriptionAr,
      'src': src,
      'islong': isLong,
      'thumbnail': thumbnail,
      'timeadded': timeadded,
    };
  }

  static List<MediaItem> mediaItemsList(List<dynamic>? list) {
    if (list == null) return [];
    return list.map((e) => MediaItem.fromJson(e)).toList();
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
