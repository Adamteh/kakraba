import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kIsWeb ? 372 : MediaQuery.of(context).size.width * 0.9,
      //height: 220.0,
      child: Column(children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 14.0,
              height: 14.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? const Color.fromRGBO(70, 46, 181, 1.0)
                    : const Color.fromRGBO(195, 195, 195, 1.0),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

//Images
final List<String> imgList = [
  'assets/kakraba/images/image1.png',
  'assets/kakraba/images/btc.jpg',
  'assets/kakraba/images/image2.jpeg',
  'assets/kakraba/images/bitcoin.png',
];

final List<Widget> imageSliders = imgList
    .map((String item) => Container(
          //Design of the image shape in the container
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
        ))
    .toList();
