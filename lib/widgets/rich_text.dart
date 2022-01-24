import 'package:flutter/material.dart';
class MyRichText extends StatelessWidget {
  const MyRichText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: RichText(
        text: TextSpan(
          text: '•   ',
          style: const TextStyle(color: Color(0xff0cfaea), fontSize: 16),
          children: <TextSpan>[
            TextSpan(text: text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


