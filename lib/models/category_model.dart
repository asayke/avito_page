import 'package:avito_page/utils/app_images.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int? number;
  final String imagePath;

  const Category({required this.number, required this.imagePath});
  
  @override
  List<Object?> get props => [number, imagePath];

  static List<Category> categories = [
    const Category(number: 1, imagePath: AppImages.photoCard0),
    const Category(number: 2, imagePath: AppImages.photoCard1),
    const Category(number: 3, imagePath: AppImages.photoCard2),
  ];
}