import 'package:dekemaskeun/widget/background.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
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
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "De Kemaskeun Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: 'Lato-Reg',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
