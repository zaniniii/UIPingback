import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste_navegacao/widgets/card_sale.widget.dart';
import 'package:teste_navegacao/widgets/custom_bottom_navbar.widget.dart';
import 'package:teste_navegacao/widgets/header.widget.dart';
import 'package:teste_navegacao/widgets/list_destaque.widget.dart';
import 'package:teste_navegacao/widgets/list_today.widget.dart';
import 'package:teste_navegacao/widgets/title_default.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Header(),
                TitleDefault(title: "Hoje", subtitle: "Ver mais"),
                ListToday(),
                TitleDefault(title: "Destaques", subtitle: "Ver mais"),
                ListDestaque(),
                CardSale()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
