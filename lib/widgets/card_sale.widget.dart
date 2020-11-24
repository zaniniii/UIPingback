import 'package:flutter/material.dart';
import 'package:teste_navegacao/constants/colors.constant.dart';
import 'package:teste_navegacao/constants/sizes.constant.dart';

class CardSale extends StatelessWidget {
  const CardSale({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingDefault, vertical: 38.0),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 120.0,
                padding: EdgeInsets.all(paddingDefault),
                decoration: BoxDecoration(
                  color: ColorLigth,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    bottomLeft: Radius.circular(18.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Você tem o que dizer?",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          color: ColorText),
                    ),
                    Text("Então diga com a Pingback.",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                            height: 1.2,
                            color: ColorText,
                            fontWeight: FontWeight.w800)),
                  ],
                ),
              ),
            ),
            Container(
              width: 120.0,
              padding: EdgeInsets.all(paddingDefault),
              height: 120.0,
              decoration: BoxDecoration(
                  color: ColorPrimary,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        18.0,
                      ),
                      bottomRight: Radius.circular(
                        18.0,
                      ))),
              child: Center(
                child: Text("Comece Grátis!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        height: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w800)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
