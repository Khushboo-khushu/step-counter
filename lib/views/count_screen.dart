import 'package:flutter/material.dart';
import 'package:step_counter/constants/colors.dart';
import 'package:step_counter/constants/image_constants.dart';
import 'package:step_counter/constants/strings_constants.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppString.app_name),
      ),
      body: Column(children: [
        SizedBox(height: 70,),

        Image.asset(ImageConstants.man_img,
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                margin: const EdgeInsets.all(8.0),
                color: AppColors.primary,
                elevation: 30,
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: CircleAvatar(
                            backgroundColor: AppColors.buttoncolor,
                            radius: 50,
                            child: Icon(
                              Icons.fireplace,
                              color: AppColors.white,
                            )),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data"),
                          Text("Step Count"),
                        ],
                      ))
                ]),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                margin: const EdgeInsets.all(8.0),
                color: Color.fromARGB(255, 188, 232, 210),
                elevation: 30,
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: AppColors.appbarcolor,
                          child: Icon(Icons.fireplace)),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data"),
                          Text("Calories burnt"),
                        ],
                      ))
                ]),
              ),
            )
          ],
        )
      ]),
    );
  }
}
