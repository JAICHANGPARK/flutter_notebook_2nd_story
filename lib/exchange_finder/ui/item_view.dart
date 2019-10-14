import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/exchange_finder/app_styles.dart';
import 'package:flutter_notebook_second_story/exchange_finder/map_page.dart';
import 'package:flutter_notebook_second_story/exchange_finder/models/curreny.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ItemView extends StatelessWidget {
  final Currency v;
  ItemView({this.v}):super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Fluttertoast.showToast(
            msg: v.countryCode,
            backgroundColor: Colors.red);
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExchangeMapPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left:  ApplicationPadding.appLeftPadding),
        height: 82,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 48,
              width: 48,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(2, 2))
                  ]),
              child: Image.network(
                v.img,
                scale: 0.6,
                width: 40,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("${v.price}"),
                  Text(v.countryCode),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: VerticalDivider(
                thickness: 2,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_vert),
              color: Colors.grey[200],
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
