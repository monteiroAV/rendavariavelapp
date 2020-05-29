import 'package:flutter/material.dart';

class VisaoGeral extends StatefulWidget {
  @override
  _VisaoGeralState createState() => _VisaoGeralState();
}

class _VisaoGeralState extends State<VisaoGeral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Bem Vindo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Text('Brasil'),
      ),
    );
  }
}
