import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/colors.constant.dart';
import 'package:teste_navegacao/constants/sizes.constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingDefault),
      height: 106.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
            color: ColorText,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: 60.0,
              height: 60.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorPrimary,
                borderRadius: BorderRadius.circular(60.0),
                boxShadow: [
                  BoxShadow(
                    color: ColorPrimary.withOpacity(0.3),
                    blurRadius: 10.0,
                    offset: Offset(1.0, 2.0),
                  ),
                ],
              ),
              child: Icon(
                Icons.add,
                color: ColorLigth,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.library_add_check_outlined),
            onPressed: () {},
            color: ColorText,
          ),
        ],
      ),
    );
  }
}
