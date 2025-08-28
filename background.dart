import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.asset(
            'Image/bg_image1.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Positioned(
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
            ),
          ),
        ),
      ],
    );
  }
}
