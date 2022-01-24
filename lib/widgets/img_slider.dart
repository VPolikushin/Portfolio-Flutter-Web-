import 'package:flutter/material.dart';
import 'dart:html' as html;

Map<String, String> imgUrl = {
  'QrScanner': 'https://github.com/VPolikushin/QrScanner',
  'Kanban доска': 'https://github.com/VPolikushin/Nekidaem',
  'Курсы': 'https://github.com/VPolikushin/lessons',
  'Портфолио (Web)': 'https://github.com/VPolikushin/Portfolio-Flutter-Web-',
};

List<String> img = [
  'assets/qr_scanner.jpeg',
  'assets/kanban.jpg',
  'assets/lessons.jpg',
  'assets/portfolio.jpg',
];

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key, required this.imgHeight, required this.imgWidth}) : super(key: key);
  final imgHeight;
  final imgWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: img.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => html.window.open(imgUrl.values.elementAt(index), imgUrl.keys.elementAt(index)),
            child: Container(
              width: imgWidth,
              padding: const EdgeInsets.only(right: 25, top: 4),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(img[index], fit: BoxFit.cover, width: imgWidth, height: imgHeight,),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            imgUrl.keys.elementAt(index),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          );
        }
    );
  }
}


class ImagePageViewSlider extends StatefulWidget {
  const ImagePageViewSlider({Key? key, required this.imgHeight, required this.imgWidth}) : super(key: key);
  final imgHeight;
  final imgWidth;

  @override
  _ImagePageViewSliderState createState() => _ImagePageViewSliderState();
}

class _ImagePageViewSliderState extends State<ImagePageViewSlider> with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.74, initialPage: 1);
    _currentPage = 1;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: widget.imgHeight,
          child: PageView.builder(
            onPageChanged: (index){
              setState(() {
                _currentPage = index;
              });
            },
            controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: img.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => html.window.open(imgUrl.values.elementAt(index),'уроки'),
                  child: Container(
                    width: widget.imgWidth,
                    padding: const EdgeInsets.only(right: 20, top: 4),
                    child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(img[index], fit: BoxFit.cover, width: widget.imgWidth, height: widget.imgHeight,),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Text(
                                  imgUrl.keys.elementAt(index),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                );
              }
          ),
        ),
        const SizedBox(height: 6,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: img.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentPage = entry.key;
                });
                _pageController.animateToPage(entry.key, duration: const Duration(milliseconds: 800), curve: Curves.linear);
              },
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(_currentPage == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),

      ],
    );
  }
}
