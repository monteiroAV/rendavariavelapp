import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


import '../dados/dados.page.dart';

import 'home_controller.dart';
import 'pages/infoPage.dart';
import 'pages/relatorioCot.dart';
import 'pages/visaoGeral.dart';
import 'pages/volatPage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  int selectedindex = 0;
  Color backgroundColor = Colors.white;

  List<NavigationItem> items = [
    NavigationItem(Icon(Icons.home), Text('Geral')),
    NavigationItem(Icon(Icons.person_outline), Text('Dados')),
    NavigationItem(Icon(Icons.monetization_on), Text('Relatorio')),
    NavigationItem(Icon(Icons.show_chart), Text('Volatilidade')),
    NavigationItem(Icon(Icons.list), Text('Info'))
  ];

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 290),
      height: double.maxFinite,
      width: isSelected ? 125 : 50,
      padding: isSelected ? EdgeInsets.only(left: 10, right: 10) : null,
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(50)))
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                    size: isSelected ? 25 : 28,
                    color: isSelected ? Colors.black : Colors.white),
                child: item.icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: isSelected
                    ? DefaultTextStyle.merge(
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        child: item.title)
                    : Container(),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                return selectedindex = index;
              });
            },
            children: <Widget>[
              VisaoGeral(),
              DadosPage(),
              RelatCot(),
              VolatPage(),
              InfoPage()
            ],
          ),
          bottomNavigationBar: Container(
            height: 56,
            padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: items.map((item) {
                var itemIndex = items.indexOf(item);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _pageController.jumpToPage(itemIndex);
                    });
                    setState(() {
                      selectedindex = itemIndex;
                    });
                  },
                  child: _buildItem(item, selectedindex == itemIndex),
                );
              }).toList(),
            ),
          )),
    );
  }
}

class NavigationItem {
  final Icon icon;
  final Text title;

  NavigationItem(this.icon, this.title);
}
