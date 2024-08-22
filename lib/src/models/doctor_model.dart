// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class DoctorModel extends Equatable {
  final String id;
  final String name_en;
  final String name_ar;
  final String spec_en;
  final String spec_ar;
  final String about_en;
  final String about_ar;
  final String initials;
  final String avatar;

  const DoctorModel({
    required this.id,
    required this.name_en,
    required this.name_ar,
    required this.spec_en,
    required this.spec_ar,
    required this.about_en,
    required this.about_ar,
    required this.initials,
    required this.avatar,
  });

  DoctorModel copyWith({
    String? id,
    String? name_en,
    String? name_ar,
    String? spec_en,
    String? spec_ar,
    String? about_en,
    String? about_ar,
    String? initials,
    String? avatar,
  }) {
    return DoctorModel(
      id: id ?? this.id,
      name_en: name_en ?? this.name_en,
      name_ar: name_ar ?? this.name_ar,
      spec_en: spec_en ?? this.spec_en,
      spec_ar: spec_ar ?? this.spec_ar,
      about_en: about_en ?? this.about_en,
      about_ar: about_ar ?? this.about_ar,
      initials: initials ?? this.initials,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name_en': name_en,
      'name_ar': name_ar,
      'spec_en': spec_en,
      'spec_ar': spec_ar,
      'about_en': about_en,
      'about_ar': about_ar,
      'initials': initials,
      'avatar': avatar,
    };
  }

  factory DoctorModel.fromJson(Map<String, dynamic> map) {
    return DoctorModel(
      id: map['id'] as String,
      name_en: map['name_en'] as String,
      name_ar: map['name_ar'] as String,
      spec_en: map['spec_en'] as String,
      spec_ar: map['spec_ar'] as String,
      about_en: map['about_en'] as String,
      about_ar: map['about_ar'] as String,
      initials: map['initials'] as String,
      avatar: map['avatar'] as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name_en,
      name_ar,
      spec_en,
      spec_ar,
      about_en,
      about_ar,
      initials,
      avatar,
    ];
  }
}
