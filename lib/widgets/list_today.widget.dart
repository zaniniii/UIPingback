import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/sizes.constant.dart';

import 'card_today.widget.dart';

class ListToday extends StatelessWidget {
  const ListToday({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: paddingDefault),
      scrollDirection: Axis.horizontal,
      child: Container(
        alignment: Alignment.topLeft,
        height: 215.0,
        child: Row(
          children: [
            CardToday(
              image:
                  'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/ipfky.jpeg',
              title:
                  "O único caminho possível (para uma comunidade de startups) no Brasil",
              autor: 'Notunicorn',
            ),
            CardToday(
              image:
                  'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/i6vwko.png',
              title: "Tome café sem açúcar",
              autor: 'Notunicorn',
            ),
            CardToday(
              image:
                  'https://pingback-prod-uploads.s3.amazonaws.com/uploads/user/images/editor/0kb99.png',
              title: "E aí, o quão deprimido você está?",
              autor: 'Notunicorn',
            ),
            CardToday(
              image:
                  'https://bucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com/public/images/e9a79812-3ead-4fe9-9045-595e93ed55ef_1062x800.jpeg',
              title: "Monte logo num Poneicórnio",
              autor: 'Notunicorn',
            ),
          ],
        ),
      ),
    );
  }
}
