import 'package:flutter/material.dart';

class FollowList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        children: [
          _builderProfile("images/model1.jpeg", "images/chanellogo.jpg"),
          _builderProfile("images/model2.jpeg", "images/chloelogo.png"),
          _builderProfile("images/model3.jpeg", "images/louisvuitton.jpg"),
          _builderProfile("images/model1.jpeg", "images/chloelogo.png"),
          _builderProfile("images/model2.jpeg", "images/chanellogo.jpg"),
          _builderProfile("images/model3.jpeg", "images/louisvuitton.jpg"),
        ],
      ),
    );
  }

  Widget _builderProfile(String imagePath, String logoPath) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                ),
              ),
              Image(
                image: AssetImage(logoPath),
                width: 25.0,
                height: 25.0,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            width: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.red),
            child: Center(
              child: Text(
                "Follow",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
