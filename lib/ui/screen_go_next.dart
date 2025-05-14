import 'package:counter_type_one/business/counter_controller.dart';
import 'package:counter_type_one/ui/screen_boh.dart';
import 'package:counter_type_one/ui/screen_increment.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override

  Widget build(BuildContext context) {
    //Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title: const Text('Screen1')),
      body: Center(
        child: Column ( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Benvenuto!'),
            ElevatedButton(
              onPressed: () {
                Get.to(() => Screen2());
              },
              child: const Text('Vai a Screen 2'),
            ),
          ],
        ),

      ),
    );
  }
}
