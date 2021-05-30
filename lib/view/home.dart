import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../core/widget/widget.dart';
import '../utils/color_choice.dart';
import '../core/core.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: ColorChoices.colors[0].gradient!)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          title: txtHomePageAppBarTitle,
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Text(
                "Hello, John.",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 50.0,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Data : ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: DateFormat.yMMMMd().format(DateTime.now()),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        _cardView(),
        Spacer(),
      ],
    );
  }

  Widget _cardView() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(top: 23),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(70),
                    offset: Offset(3.0, 10.0),
                    blurRadius: 15.0)
              ]),
          height: 350.0,
          width: 350.0,
          child: Stack(
            children: <Widget>[
              Hero(
                tag: '14' + "_background",
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: '100' + "_backIcon",
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: IconButton(
                                        icon: Icon(Icons.add),
                                        iconSize: 70,
                                        onPressed: () {})),
                                Text('Adicionar uma categoria',
                                    style: TextStyle(fontSize: 20))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
