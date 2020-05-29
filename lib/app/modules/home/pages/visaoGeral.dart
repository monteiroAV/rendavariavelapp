import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

import '../../login/login_page.dart';
import '../home_controller.dart';


class VisaoGeral extends StatefulWidget {
  @override
  _VisaoGeralState createState() => _VisaoGeralState();
}

class _VisaoGeralState extends State<VisaoGeral> {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.all(15),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Olá, nome!',
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      controller.visible == false
                       ? 'Veja seus resultados'
                       : 'Resultados',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: controller.visible == false
                         ? Colors.blue
                         : Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          controller.isVisible();
                        });
                      },
                      icon: Icon(
                        controller.visible == false
                                      ? Icons.visibility
                                      : Icons.visibility_off
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 150,
                  width: 350,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(15))),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                AntIcons.sliders_outline,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Forex',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '',
                                style: TextStyle(color: Colors.amber),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          padding: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(20))),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                AntIcons.sliders_outline,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'BMF',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '',
                                style: TextStyle(color: Colors.amber),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: <Widget>[
                    Text(''),
                    Container(
                        height: 170,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              print('clicouuu');
                            },
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  AntIcons.bar_chart,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'Forex',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: () {
                              print('clicouuu');
                            },
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  AntIcons.bar_chart,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'BMF',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
