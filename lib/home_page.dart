import 'package:avito_page/models/category_model.dart';
import 'package:avito_page/widgets/my_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final List<String> imgList = [
  //   "assets/photo0.jpg",
  //       "assets/photo1.jpg",
  //   "assets/photo2.jpg"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Предложение", style: TextStyle(color: Colors.black)),
       centerTitle: true,
       elevation: 0,
       backgroundColor: Colors.white,
       actions: [
        IconButton(color: Colors.lightBlue, onPressed: () {} , icon: const Icon(Icons.upload)),
        IconButton(color: Colors.lightBlue, onPressed: () {} , icon: const Icon(Icons.more_horiz)),
       ],
      ),
      body: Column(
          children:  [
            const SizedBox(height: 20),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                child : CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ), items: Category.categories.map((category) => PhotoCarouselCard(category: category,)).toList()),
              ),
              ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, top: 14.0),
                child: Column(
                  children: const [ 
                    Text("Квартира-студия, 40м, 16/23 эт.", style: TextStyle(fontSize: 18),),
                    SizedBox(height: 8.0),
                   ]
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
               children: const [
               Icon(Icons.location_on_outlined, color: Colors.lightBlue,),
               Text("Центр (Кировский р-н.), Очаковская, 39", style: TextStyle(color: Colors.lightBlue, fontSize: 15),)
                  ]
                ),
            ),
          ]
      ),
    );
  }
}

class PhotoCarouselCard extends StatelessWidget {
  final Category category;
 
  const PhotoCarouselCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        child: Stack(
          children: <Widget> [
            MyImage(imagePath: category.imagePath),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Center(
                  child: Container(
                  color: const Color.fromARGB(140, 0, 0, 0),
                    child: Text(
                      "${category.number}/${Category.categories.length}" ,
                      style: const TextStyle(
                        color: Colors.white,fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
             ) 
            )
          ],
        )
      ),
    );
  }
}