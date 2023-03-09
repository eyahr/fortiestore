import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rive/rive.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List imageList = [
    {"id": 1, "image_path": 'assets/1.jpg'},
    {"id": 2, "image_path": 'assets/2.jpg'},
    {"id": 3, "image_path": 'assets/3.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  get children => null;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: new Container(),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 0.1,
          ),
          child: Image.asset('image/logo11.png',
              height: 99.0, width: 150.0, fit: BoxFit.fitWidth),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 34, 45, 84),
      ),
      body: Column(children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 12 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? Colors.white70
                            : Color.fromARGB(255, 34, 45, 84),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 34, 45, 84),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(17), topLeft: Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 6),
          child: GNav(
            onTabChange: (index) {
              return print(index);
            },
            padding: EdgeInsets.all(10),
            gap: 4,
            backgroundColor: Color.fromARGB(255, 34, 45, 84),
            color: Colors.white,
            activeColor: Colors.white,
            iconSize: 24,
            tabBackgroundColor: Colors.white38.withOpacity(0.1),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Catagolue',
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Panier',
              ),
              GButton(
                icon: Icons.star_rate,
                text: 'Avis',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Paramètres',
              )
            ],
          ),
        ),
      ),
    );
  }
}
