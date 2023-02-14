import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});

  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(66, 179, 176, 176)),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        constraints: BoxConstraints.tightFor(width: 40),
        onPressed: () {},
        icon: icon,
        splashRadius: 22,
        color: Colors.black54,
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  const ImageButton({super.key, required this.image, required this.text});
  final String image;

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 45,
          onPressed: () {},
          icon: Image.asset(image),
        ),
        Text(text),
      ],
    );
  }
}
