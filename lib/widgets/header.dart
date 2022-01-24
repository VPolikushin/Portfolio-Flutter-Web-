import 'package:flutter/material.dart';
import 'package:resume/widgets/social_media.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({Key? key, required this.containerWidth}) : super(key: key);
  final double containerWidth;

  Widget _desktopHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/ava.jpg',),
              radius: 32,
            ),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Владислав Поликушин',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff0cfaea),
                  ),
                ),
                SizedBox(height: 4,),
                Text(
                  'Flutter разработчик',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                  ),
                )
              ],
            ),
          ],
        ),
        const SocialMedia(),
      ],
    );
  }

  Widget _mobileHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/ava.jpg'),
              radius: 30,
            ),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Владислав Поликушин',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff0cfaea),
                  ),
                ),
                SizedBox(height: 4,),
                Text(
                  'Flutter разработчик',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 81),
          child: SocialMedia(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return containerWidth == 700
    ? _mobileHeader()
    : _desktopHeader();
  }
}
