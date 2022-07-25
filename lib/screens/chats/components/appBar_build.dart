import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
      automaticallyImplyLeading: false,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      title: const Text('Chats'));
}
