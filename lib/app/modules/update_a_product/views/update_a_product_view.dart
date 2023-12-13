import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_a_product_controller.dart';

class UpdateAProductView extends GetView<UpdateAProductController> {
  const UpdateAProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateAProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UpdateAProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
