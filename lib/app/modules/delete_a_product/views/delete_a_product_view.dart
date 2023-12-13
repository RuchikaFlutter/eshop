import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delete_a_product_controller.dart';

class DeleteAProductView extends GetView<DeleteAProductController> {
  const DeleteAProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeleteAProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeleteAProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
