import 'package:counter_type_one/business/counter_controller.dart';
import 'package:counter_type_one/ui/screen_boh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());

    return Scaffold (
      appBar: AppBar(title: const Text ('Screen 2')),
      body: Center (
        child: GetBuilder<CounterController>(
          init: CounterController(),
          dispose: (_) => print ('CounterController disposed da GetBuilder'),
          builder: (controller) {
            return Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Current counter value:'),
                Obx(() => Text(
                  '${controller.uiCounter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon (Icons.remove),
                      onPressed: controller.decrement,
                    ),
                    IconButton (
                      icon: const Icon (Icons.add),
                      onPressed: controller.increment,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton (onPressed: () {
                  Get.to(() => Screen3());
                },
                  child: const Text('Go to Screen 3'),
                )
              ],
            );
          },
        )
      ),
    );
  }
}