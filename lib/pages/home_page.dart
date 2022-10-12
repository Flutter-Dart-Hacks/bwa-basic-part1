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

// Show dan hide dialog dengan data
// https://stackoverflow.com/questions/59768792/how-to-get-a-value-from-a-dialog-in-flutter
  showDialogBelakang(BuildContext context) {
    showModalBottomSheet(
      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              const Text(
                'Update Photo',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: colorPrimaryText,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'You are only able to change\nthe picture profile once',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: colorSecondaryText,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'nilai data saja dari dialog');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorOrange,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      )),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
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
        );
      },
      isDismissible: true,
    ).then((value) {
      if (value != null) {
        print(value);
      }
    }).catchError((error) {
      // Print error
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scollBarController =
        ScrollController(initialScrollOffset: 0.0);

    return Scaffold(
      backgroundColor: colorBgAbu,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Scrollbar(
            controller: scollBarController,
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
