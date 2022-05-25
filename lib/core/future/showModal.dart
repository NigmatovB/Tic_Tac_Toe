// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<dynamic> modal(v, height, context) {
  String photo = (v == 1) ? 'assets/images/x.svg' : 'assets/images/oo.svg';

  return showModalBottomSheet(
    context: context,
    builder: (context) => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          v != 0 ? 'Winner !' : 'The forces are equal !',
          style: TextStyle(
            fontSize: height * .035,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height * .07,
        ),
        SizedBox(
          height: v != 0 ? height * .2 : 0.0,
          width: v != 0 ? height * .2 : 0.0,
          child: SvgPicture.asset(
            v != 0 ? photo : 'assets/images/w.svg',
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}
