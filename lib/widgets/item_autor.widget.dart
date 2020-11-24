import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/colors.constant.dart';

class ItemAutor extends StatelessWidget {
  final String photo, name;
  const ItemAutor({
    Key key,
    this.photo,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93.0,
      child: Column(
        children: [
          SizedBox(
            width: 66.0,
            height: 66.0,
            child: CircleAvatar(
              radius: 66.0,
              backgroundColor: ColorPrimary,
              backgroundImage: NetworkImage(photo ?? ''),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              name ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.1,
                fontFamily: 'Poppins',
                color: ColorText,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
