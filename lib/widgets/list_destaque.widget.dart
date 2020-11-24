import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/sizes.constant.dart';

import 'item_autor.widget.dart';

class ListDestaque extends StatelessWidget {
  const ListDestaque({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: paddingDefault),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ItemAutor(
            photo:
                'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/c4m4mgq.jpeg',
            name: "Alexandre Abramo",
          ),
          ItemAutor(
            photo:
                'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/nxnozh.png',
            name: "Raising Blog",
          ),
          ItemAutor(
            photo:
                'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/iw562x.jpeg',
            name: "Adriano Alves",
          ),
          ItemAutor(
            photo:
                'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/9dst4d.jpeg',
            name: "Notunicorn",
          ),
          ItemAutor(
            photo:
                'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/d7i3io.jpeg',
            name: "Polêmica Agil",
          ),
        ],
      ),
    );
  }
}
