
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgets/first_column.dart';
import 'package:resume/widgets/portfolio.dart';

import 'package:resume/widgets/second_column.dart';

import '../widgets/header.dart';

class MyExtraLargeWidget extends StatefulWidget {
  const MyExtraLargeWidget({Key? key}) : super(key: key);

  @override
  State<MyExtraLargeWidget> createState() => _MyExtraLargeWidgetState();
}

class _MyExtraLargeWidgetState extends State<MyExtraLargeWidget> {

  Widget _content(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FirstColumn(),
        SizedBox(width: MediaQuery.of(context).size.width / 8),
        const SecondColumn(),
      ],
    );
  }

  Widget _backgroundImg() {
    return Opacity(
      opacity: 0.08,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_light.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double _containerWidth = 1200;
    return SingleChildScrollView(
      child: Stack(
        children: [
          _backgroundImg(),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: _containerWidth,
              padding: EdgeInsets.only(
                top: 20,
                left: size.width / 40,
                right: size.width / 40,
                bottom: 20,
              ),
              child: Column(
                children: [
                  const MyHeader(containerWidth: _containerWidth),
                  const SizedBox(height: 80,),
                  _content(context),
                  const SizedBox(height: 60,),
                  const Portfolio(containerWidth: _containerWidth),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
