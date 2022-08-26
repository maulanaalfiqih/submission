import 'package:dekemaskeun/pages/katalog_item.dart';
import 'package:dekemaskeun/widget/background.dart';
import 'package:flutter/material.dart';

class DetailKatalog extends StatelessWidget {
  final KatalogItem katalog;

  const DetailKatalog({Key? key, required this.katalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailMobilePage(katalog: katalog);
        } else {
          return DetailWebPage(katalog: katalog);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final KatalogItem katalog;

  const DetailMobilePage({Key? key, required this.katalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      image: const AssetImage('assets/images/bg.png'),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(katalog.imageAssets),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  katalog.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30, fontFamily: 'Lato-Reg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        katalog.price,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16.0, fontFamily: 'Lato-Reg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final KatalogItem katalog;

  const DetailWebPage({Key? key, required this.katalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      image: const AssetImage('assets/images/bg.png'),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(katalog.imageAssets),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  katalog.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30, fontFamily: 'Lato-Reg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        katalog.price,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16.0, fontFamily: 'Lato-Reg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
