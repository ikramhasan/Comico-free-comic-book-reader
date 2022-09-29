import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.text,
    this.width,
  }) : super(key: key);

  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
