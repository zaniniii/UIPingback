import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teste_navegacao/constants/colors.constant.dart';
import 'package:teste_navegacao/constants/sizes.constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: paddingDefault, right: paddingDefault, top: paddingDefault),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {},
                  color: ColorText,
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: ColorText,
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(width: 4.0, color: ColorLigth)),
                  child: CircleAvatar(
                    maxRadius: 20.0,
                    backgroundImage: NetworkImage(
                        'https://uifaces.co/our-content/donated/1H_7AxP0.jpg'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
