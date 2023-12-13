import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_a_product_controller.dart';

class AddAProductView extends GetView<AddAProductController> {
  const AddAProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddAProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddAProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
