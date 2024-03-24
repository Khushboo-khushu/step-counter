import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:step_counter/constants/image_constants.dart';
import 'package:step_counter/constants/strings_constants.dart';
import 'package:step_counter/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Lottie.asset(ImageConstants.splash1,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.5),
            ),
            Text(
              selectionColor: const Color.fromARGB(255, 94, 54, 60),
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              AppString.app_name,
            )
          ],
        )
      ],
    ));
  }
}
