import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
  String title,
) {
  return AppBar(
    backgroundColor: Colors.black,
    title: Text(title),
    centerTitle: true,
    titleTextStyle: const TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
    leading: const Icon(
      Icons.arrow_back_ios_new,
      color: Colors.white,
    ),
  );
}
