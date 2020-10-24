import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 6.0)
          ],
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/model1.jpeg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Daisy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        Text("34 mins ago")
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "This official website features a ribbed knit zipper jacket that is"
                "modern and stylish. It looks very temparament and is recommend to friends"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: (MediaQuery.of(context).size.width - 100) / 2,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage("images/modelgrid1.jpeg"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width - 100) / 2,
                    height: 95.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/modelgrid2.jpeg"),
                        )),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width - 100) / 2,
                    height: 95.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/modelgrid3.jpeg"),
                        )),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.reply,
                        color: Colors.grey,
                      ),
                      Text("1.7k")
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                      Text("1.7k")
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text("2k")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
