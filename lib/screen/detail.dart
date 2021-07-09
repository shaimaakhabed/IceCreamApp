import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/model/model.dart';

class DetailPage extends StatefulWidget {
  IceCream iceCream;
  String tagImage;

  DetailPage({this.iceCream, this.tagImage});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height / 6),
            child: Hero(
                tag: widget.tagImage,
                child: Center(
                    child: Image.asset(
                  widget.iceCream.image,
                  height: size.height / 3,
                ))),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            widget.iceCream.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.iceCream.price,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            widget.iceCream.desc,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
