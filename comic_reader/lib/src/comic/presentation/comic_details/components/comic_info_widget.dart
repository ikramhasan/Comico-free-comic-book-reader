import 'package:flutter/material.dart';

class ComicInfo extends StatelessWidget {
  const ComicInfo({
    Key? key,
    required this.title,
    this.content,
  }) : super(key: key);

  final String title;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[200],
          ),
        ),
        Text(
          content ?? 'N/A',
          style: TextStyle(
            color: Colors.grey[200],
          ),
        ),
      ],
    );
  }
}
