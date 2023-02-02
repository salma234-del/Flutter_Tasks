import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text('first app'),
        actions: [
          Icon(
            Icons.search,
          ),
          Icon(Icons.abc_rounded),
          IconButton(
            icon: Icon(
              Icons.access_alarm,
            ),
            onPressed: clickedButton,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image(
                image: NetworkImage('https://images.pexels.com/photos/70330/pexels-photo-70330.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                ),
              Container(
                color: Colors.black.withOpacity(0.5),
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  'Flower',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}

void clickedButton() {
  print('Clicked');
}
