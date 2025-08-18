import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:navbar_with_getx/routes/routes.dart';
import 'package:navbar_with_getx/widget/utils/custom_button.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                title: 'Next Screen',
                icon: Icons.qr_code_2,
                color: Colors.red,
                onTap: () {
                  print('click');
                  Get.toNamed(AppPage.nextscreen);
                },
              ),
            )
        )
    );
  }
}
