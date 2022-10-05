import 'package:bwaflutterbasic1/themes.dart';
import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: colorPrimaryText,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
