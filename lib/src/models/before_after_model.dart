class BeforeAfter {
  final String? id;
  final String categoryId;
  final String beforeImg;
  final String afterImg;
  final String titleEn;
  final String titleAr;
  final String descriptionEn;
  final String descriptionAr;
  final String? mediaItemId;

  BeforeAfter({
    this.id,
    required this.categoryId,
    required this.beforeImg,
    required this.afterImg,
    required this.titleEn,
    required this.titleAr,
    required this.descriptionEn,
    required this.descriptionAr,
    this.mediaItemId,
  });

  static BeforeAfter fromJson(dynamic json) {
    return BeforeAfter(
      id: json['_id'],
      categoryId: json['categoryid'],
      beforeImg: json['beforeimg'],
      afterImg: json['afterimg'],
      titleEn: json['titleen'],
      titleAr: json['titlear'],
      descriptionEn: json['descriptionen'],
      descriptionAr: json['descriptionar'],
      mediaItemId: json['mediaitemid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryid': categoryId,
      'beforeimg': beforeImg,
      'afterimg': afterImg,
      'titleen': titleEn,
      'titlear': titleAr,
      'descriptionen': descriptionEn,
      'descriptionar': descriptionAr,
      'mediaitemid': mediaItemId,
    };
  }

  static List<BeforeAfter> listBA(List<dynamic>? list) {
    if (list == null) return [];
    return list.map((e) => BeforeAfter.fromJson(e)).toList();
  }
}
