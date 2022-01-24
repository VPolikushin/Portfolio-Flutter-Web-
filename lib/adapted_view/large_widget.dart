import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgets/first_column.dart';
import 'package:resume/widgets/header.dart';
import 'package:resume/widgets/portfolio.dart';
import 'package:resume/widgets/second_column.dart';

class MyLardgeWidget extends StatefulWidget {
  const MyLardgeWidget({Key? key}) : super(key: key);

  @override
  _MyLardgeWidgetState createState() => _MyLardgeWidgetState();
}

class _MyLardgeWidgetState extends State<MyLardgeWidget> {

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const FirstColumn(),
        SizedBox(height: 20,),
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
    const double _containerWidth = 1000;
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
                left: size.width / 8,
                right: size.width / 8,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyHeader(containerWidth: _containerWidth),
                  const SizedBox(height: 50,),
                  _content(context),
                  const SizedBox(height: 40,),
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
