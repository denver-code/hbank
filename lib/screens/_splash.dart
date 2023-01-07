import 'package:flutter/material.dart';
import 'package:hbank/internal/services/hex_to_color.dart';

class SplashTemplate0 extends StatelessWidget {
  const SplashTemplate0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "HBank",
          style: TextStyle(
              fontSize: 35,
              color: HexColor.fromHex("#B6EF11"),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
