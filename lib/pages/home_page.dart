import 'package:bwaflutterbasic1/themes.dart';
import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  generateRowWidgetdata() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'resources/images/item1.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'resources/images/item2.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'resources/images/item3.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'resources/images/item4.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'resources/images/item5.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'resources/images/item6.png',
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ],
    );
  }

  showDialogBelakang(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: const [],
          ),
        );
      },
      isDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBgAbu,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Scrollbar(
            trackVisibility: true,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Profile Picture',
                      style: TextStyle(
                        color: colorPrimaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'resources/images/primary.png',
                      width: 140,
                      height: 140,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Kucing Coklat Oren',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: colorPrimaryText,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'UI/UX Designer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: colorGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'resources/images/item1.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item2.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item3.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'resources/images/item4.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item5.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item6.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 38,
                      runSpacing: 20,
                      children: [
                        Image.asset(
                          'resources/images/item1.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item2.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item3.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item4.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item5.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'resources/images/item6.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialogBelakang(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade300,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Update Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
