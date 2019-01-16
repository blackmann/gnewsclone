import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  Welcome({
    this.title, 
    this.subtitle, 
    this.temperature = 25, 
    this.unit = "ºC"
    });

  final String title;
  final String subtitle;
  final int temperature;
  final String unit;

  @override
    Widget build(BuildContext context) {
      String _temperature = "$temperature $unit";

      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: Theme.of(context).textTheme.title),
                  SizedBox(height: 3,),
                  Text(subtitle, style: Theme.of(context).textTheme.subtitle)
                ],
              ),
            ),
            Column(
              children: <Widget>[
                SvgPicture.asset("assets/icons/partly-sunny.svg", width: 40),
                SizedBox(height: 3),
                Text(_temperature, style: TextStyle(fontFamily: 'Product Sans'),)
              ],
            )
          ],
        ),
      );
    }

}