// ignore_for_file: file_names
import 'package:flutter/material.dart';

Future<dynamic> modal(v, height, context ) {
    String photo = (v == 1) ? 'assets/images/x.png' : 'assets/images/oo.png';

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
            width: v != 0 ?  height * .2 : 0.0,
            child: Image(
              image: AssetImage( v != 0 ? photo : 'assets/images/w.jpeg' ),
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }