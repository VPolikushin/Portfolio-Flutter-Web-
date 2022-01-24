import 'package:flutter/material.dart';
import 'package:resume/widgets/rich_text.dart';

class SecondColumn extends StatelessWidget {
  const SecondColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _headerSpace = 12;
    const double _sizeBoxWidth = 450;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        SizedBox(
          width: _sizeBoxWidth,
          child: const Text(
            'Образование:',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: _headerSpace,),
        SizedBox(
          width: _sizeBoxWidth,
            child: const MyRichText(text: 'РГРТУ,    Информатика и вычислительная техника'),
        ),

        const SizedBox(height: 20,),

        const Text(
          'Опыт работы:',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: _headerSpace,),
        SizedBox(
          width: _sizeBoxWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MyRichText(text: 'Инженер - конструктор'),
              Text(
                '5 лет',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6,),
        const SizedBox(
          width: _sizeBoxWidth,
          child: Text(
            'Программирование микроконтроллеров, написание технологических программ для ПК',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
        ),

        const SizedBox(height: 12,),

        SizedBox(
          width: _sizeBoxWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: MyRichText(text: 'Мобильная разработка - фриланс'),
                  ),
              ),
              //SizedBox(width: 178),
              Text(
                '4 мес',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 6,),
        const SizedBox(
          width: _sizeBoxWidth,
          child: Text(
            'Приложение по сканированию QR кодов и созданию заметок к ним',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 6,),
        const SizedBox(
          width: _sizeBoxWidth,
          child: Text(
            'Лендинг - портфолио (Flutter web)',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 6,),
        const SizedBox(
          width: _sizeBoxWidth,
          child: Text(
            'Задания из курсов по Flutter',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
