import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/colors.constant.dart';
import 'package:teste_navegacao/constants/sizes.constant.dart';

class TitleDefault extends StatelessWidget {
  final String title, subtitle;
  const TitleDefault({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingDefault),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? '',
            style: TextStyle(
                fontSize: 24.0,
                color: ColorBlack,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
          CupertinoButton(
              child: Text(
                subtitle ?? '',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: ColorPrimary,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600),
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
