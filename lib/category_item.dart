// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String titlee;
  final Color color;

  const CategoryItem(this.titlee, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(titlee),
    );
  }
}
