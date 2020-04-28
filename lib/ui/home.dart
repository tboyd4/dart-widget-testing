import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 30.0, left: 10.0),
        color: Colors.deepOrangeAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Margherita",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal),
                )),
                Expanded(
                    child: Text(
                  "Tomato, Mozzarella, Basil",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Maranara",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal),
                )),
                Expanded(
                    child: Text(
                  "Tomato, Garlic",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.normal),
                ))
              ],
            ),
            PizzaImageWidget(),
            OrderButton()
          ],
        ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.jpg');
    Image image = Image(image: pizzaAsset, width: 350.0, height: 350.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        margin: EdgeInsets.only(top: 50.0),
        child: RaisedButton(
            child: Text("Order your pizza"),
            color: Colors.lightGreen,
            elevation: 5.0, //2:59 on the raised button video. Not rendering correctly
            onPressed: () {
              order(context);
            }));
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: Text("Order Completed"), content: Text("Thanks for your order"));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
