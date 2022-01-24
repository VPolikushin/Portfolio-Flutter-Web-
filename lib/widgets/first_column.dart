import 'package:flutter/material.dart';
import 'package:resume/widgets/rich_text.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _headerSpace = 12;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Навыки:',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: _headerSpace,),
        MyRichText(text: 'Программирование на Flutter'),
        MyRichText(text: 'HTTP - запросы (REST API)'),
        MyRichText(text: 'Firebase (authentication, firestore, storage)'),
        MyRichText(text: 'Асинхронность'),
        MyRichText(text: 'Bloc state management'),
      ],
    );
  }
}
