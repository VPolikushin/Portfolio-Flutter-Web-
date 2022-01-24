import 'package:flutter/material.dart';
import 'dart:html' as html;

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> with TickerProviderStateMixin{
  List<bool> isHovering = [false, false, false];
  Map<String, String> socialUrl = {
    'Telegram': 'https://t.me/VPolikushin',
    'Instagram': 'https://instagram.com/vpolikushin_?utm_medium=copy_link',
    'Github': 'https://github.com/VPolikushin',
  };

  Widget _myIconButton(String img, int number) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(18)),
      onTap: (){
        switch(number) {
          case 0:
            html.window.open(socialUrl.values.elementAt(number), socialUrl.keys.elementAt(number));
            break;
          case 1:
            html.window.open(socialUrl.values.elementAt(number), socialUrl.keys.elementAt(number));
            break;
          case 2:
            html.window.open(socialUrl.values.elementAt(number), socialUrl.keys.elementAt(number));
            break;
        }
      },
      onHover: (hovering){
        setState(() {
          isHovering[number] = hovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(isHovering[number] ? 23 : 18),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              img,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double _leftPadding = 10;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _myIconButton('assets/telegram@256px.png', 0),
        const SizedBox(width: _leftPadding,),
        _myIconButton('assets/instagram@256px.png', 1),
        const SizedBox(width: _leftPadding,),
        _myIconButton('assets/github@256px.png', 2),
      ],
    );
  }
}
