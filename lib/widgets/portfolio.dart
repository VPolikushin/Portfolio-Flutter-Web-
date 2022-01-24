import 'package:flutter/material.dart';
import 'package:resume/widgets/img_slider.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key, required this.containerWidth}) : super(key: key);
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Text(
          'Мои работы:',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 12,),
        containerWidth == 700
            ? const SizedBox(
                height: 210,
                child: ImagePageViewSlider(imgHeight: 150, imgWidth: 500,),
              )
            : const SizedBox(
                height: 160,
                child: ImageSlider(imgHeight: 160, imgWidth: 360,),
              ),
      ],
    );
  }
}
