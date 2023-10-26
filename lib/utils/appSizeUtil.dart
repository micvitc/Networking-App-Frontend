// ignore_for_file: file_names

import 'package:flutter/material.dart';

double h(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double w(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

Widget VerticalSizer(context, {double size = 0.022}) {
  return SizedBox(
    height: w(context) * size,
  );
}
