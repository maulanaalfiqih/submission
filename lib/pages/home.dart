import 'package:dekemaskeun/widget/background.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

int activeIndex = 0;
final assetImages = [
  'assets/images/testi1.jpeg',
  'assets/images/testi2.jpeg',
  'assets/images/testi3.jpeg',
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      image: const AssetImage('assets/images/bg.png'),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppBar(
                title: Text(
                  'De Kemaskeun',
                  style: TextStyle(
                      color: Color.fromARGB(255, 151, 119, 78),
                      fontSize: 32,
                      fontFamily: 'Richie-Brusher'),
                ),
                backgroundColor: Colors.transparent,
                centerTitle: true,
                floating: true,
                snap: true,
              )
            ];
          },
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'Terimakasih!',
                    style: TextStyle(
                      fontFamily: 'Richie-Brusher',
                      fontSize: 32,
                    ),
                  ),
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                  ),
                  itemCount: assetImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final assetImage = assetImages[index];
                    return buildImage(assetImage, index);
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                LaunchButton('Pesan Sekarang', () async {
                  await openUrl(
                      "https://wa.me/+6282181872936?text=Permisi%20Saya%20mau%20beli%20kemasan%20...");
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String assetImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        color: const Color.fromARGB(255, 247, 244, 244),
        child: Image.asset(
          assetImage,
          fit: BoxFit.cover,
        ),
      );
}

class LaunchButton extends StatelessWidget {
  final String text;
  final VoidCallback? tap;

  const LaunchButton(this.text, this.tap, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: RaisedButton(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontFamily: 'Lato-Reg', fontSize: 20),
        ),
        onPressed: tap,
        color: const Color.fromARGB(255, 151, 119, 78),
      ),
    );
  }
}

Future<void> openUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  await launch(url);
}
