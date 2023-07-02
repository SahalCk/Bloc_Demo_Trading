import 'package:flutter/material.dart';

Widget header() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Watchlist",
        style: TextStyle(
            fontSize: 35, color: Colors.white, fontWeight: FontWeight.w400),
      ),
      Icon(Icons.pin_drop)
    ],
  );
}
