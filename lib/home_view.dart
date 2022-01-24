import 'package:flutter/material.dart';
import 'package:resume/adapted_view/large_widget.dart';
import 'package:resume/adapted_view/normal_widget.dart';
import 'package:resume/adapter.dart';
import 'package:resume/adapted_view/extra_large_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = FormFactor().getSize(context);
    return Scaffold(
        body:
        size == ScreenSize.ExtraLarge
            ? const MyExtraLargeWidget()
            : size == ScreenSize.Large
            ? const MyLardgeWidget()
            : size == ScreenSize.Normal
            ? const MyNormalWidget()
            : const Text('small')
    );
  }
}
