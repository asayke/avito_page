import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int? number;
  final String imagePath;

  const Category({required this.number, required this.imagePath});
  
  @override
  List<Object?> get props => [number, imagePath];

  static List<Category> categories = [
    const Category(number: 1, imagePath: "assets/photo0.jpg"),
    const Category(number: 2, imagePath: "assets/photo1.jpg"),
    const Category(number: 3, imagePath: "assets/photo2.jpg"),
  ];
}