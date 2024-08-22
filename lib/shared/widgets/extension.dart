import 'package:flutter/material.dart';

extension BorderContainer on Widget {
  Widget borderContainer() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: this,
    );
  }
}