import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/colors.constant.dart';

class CardToday extends StatelessWidget {
  final String autor, image, title;
  const CardToday({
    Key key,
    this.autor,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      width: 146.0,
      height: 200.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorBlack.withOpacity(0.3),
            blurRadius: 10.0,
            offset: Offset(1.0, 4.0),
          )
        ],
        borderRadius: BorderRadius.circular(18.0),
        color: ColorPrimary,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image ?? ''),
        ),
      ),
      child: Stack(
        overflow: Overflow.clip,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  width: double.infinity,
                  height: 86.0,
                  decoration: BoxDecoration(
                    color: ColorBlack.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18.0),
                      bottomRight: Radius.circular(18.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          autor ?? "",
                          style: TextStyle(
                            color: ColorLigth,
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          title ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: ColorLigth,
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              height: 1.2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
