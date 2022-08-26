import 'package:dekemaskeun/widget/background.dart';
import 'package:flutter/material.dart';
import 'package:dekemaskeun/pages/katalog_item.dart';
import 'package:dekemaskeun/pages/detail_katalog.dart';

class KatalogPage extends StatelessWidget {
  const KatalogPage({Key? key}) : super(key: key);

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
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const KatalogItemList();
              } else if (constraints.maxWidth <= 1200) {
                return const KatalogItemGrid(gridCount: 4);
              } else {
                return const KatalogItemGrid(gridCount: 6);
              }
            },
          ),
        ),
      ),
    );
  }
}

class KatalogItemList extends StatelessWidget {
  const KatalogItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 12, right: 32, bottom: 32, left: 32),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
      itemBuilder: (context, index) {
        final KatalogItem katalog = katalogItemList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailKatalog(
                katalog: katalog,
              );
            }));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: const Color.fromARGB(255, 247, 244, 244),
              child: Column(
                children: [
                  Image.asset(
                    katalog.imageAssets,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      katalog.name,
                      style: const TextStyle(
                          fontSize: 24, fontFamily: 'Richie-Brusher'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      katalog.price,
                      style: const TextStyle(
                        fontFamily: 'Lato-Reg',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: katalogItemList.length,
    );
  }
}

class KatalogItemGrid extends StatelessWidget {
  final int gridCount;

  // ignore: use_key_in_widget_constructors
  const KatalogItemGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 12, right: 32, bottom: 32, left: 32),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
      itemBuilder: (context, index) {
        final KatalogItem katalog = katalogItemList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailKatalog(
                katalog: katalog,
              );
            }));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: const Color.fromARGB(255, 247, 244, 244),
              child: Column(
                children: [
                  Image.asset(
                    katalog.imageAssets,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      katalog.name,
                      style: const TextStyle(
                          fontSize: 24, fontFamily: 'Richie-Brusher'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      katalog.price,
                      style: const TextStyle(
                        fontFamily: 'Lato-Reg',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: katalogItemList.length,
    );
  }
}
