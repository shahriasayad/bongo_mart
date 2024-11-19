import 'package:bongo_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bongo_mart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDesktop = TDeviceUtils.isDesktop(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Container()
            ),
          ],
        ),
      ),
    );
  }
}
