import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_with_getx/model/langModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LanguageModel(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'title'.tr,
                  style: TextStyle(fontSize: 42),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 13,
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'description'.tr,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Set Language',
                        content: Container(
                          child: Column(children: [
                            ElevatedButton(
                              onPressed: () {
                                Get.updateLocale(
                                  Locale('en', 'Us'),
                                );
                              },
                              child: Text('English'),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                Get.updateLocale(
                                  Locale('bn', 'BD'),
                                );
                              },
                              child: Text('Bangla'),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.updateLocale(
                                  Locale('ar', 'SA'),
                                );
                              },
                              child: Text('Arabic'),
                            ),
                          ]),
                        ));
                  },
                  child: Text('Change Language'),
                )
              ]),
        ),
      )),
    );
  }
}
