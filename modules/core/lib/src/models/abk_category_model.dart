import 'dart:typed_data';

import 'package:core/src/models/uint8list_converter.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'abk_category_model.freezed.dart';
part 'abk_category_model.g.dart';

@freezed
abstract class Category extends Equatable with _$Category {
  Category._();
  factory Category({
    @Default("") String categoryId,
    @Default("") String pseudoId,
    @Default("") String categoryName,
    @Default("") String description,
    @Uint8ListConverter() Uint8List? image,
    @Default(0) int seqId,
    @Default(0) int nbrOfProducts,
    @Default([]) List<ABKService> services,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json['category'] ?? json);

  @override
  List<Object?> get props => [categoryId];

  @override
  String toString() => '$categoryName[$categoryId]';
}

@freezed
abstract class Categories with _$Categories {
  factory Categories({@Default([]) List<Category> categories}) = _Categories;
  Categories._();

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}



