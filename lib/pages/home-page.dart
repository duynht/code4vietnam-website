import 'package:code4vietnam/components/top-bar.dart';
import 'package:flutter/material.dart';
import 'package:code4vietnam/components/custom-card-list.dart';
import 'package:code4vietnam/components/top-bar-bottom.dart';
import 'package:code4vietnam/theme/style.dart';

Map map = {"title": "Test", "body": "something bla bla here", "bottom": "bla bla here"};
List<Map> a = [map,map,map,map];
Map map1 = {"top":"top","middle":"mid mid mid mid", "bottom":"bottom"};

class HomePage extends StatefulWidget{
  final String title;
  HomePage({Key key, this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: TopBar(
            title: 'Code For Vietnam',
            bottom: PreferredSize(child: TopBarBottom(map1),preferredSize:Size.fromHeight(180)), 
        ),
        body: Column(
            children: [
              Padding(padding: EdgeInsets.only(left:96, right: 96), child: CustomCardList(a)),
              Center(
                  child: Text("View all projects",style: 
                      TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18, 
                          color: Color.fromRGBO(0,0,0,1),
                          fontWeight: FontWeight.w100
                      )
                  )
              ),
              Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0, // has the effect of softening the shadow
                            spreadRadius: 0.0, // has the effect of extending the shadow
                            offset: Offset(
                                5.0, // horizontal, move right 10
                                5.0, // vertical, move down 10
                            ),
                        )
                      ],
                  ),
                  child: Column(
                      children:
                      [Row(
                          children:[]
                      )
                      ]
                  )
                      ),
                  Row(
                      children:[]
                  ),
                  Container(
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0, // has the effect of softening the shadow
                                spreadRadius: 0.0, // has the effect of extending the shadow
                                offset: Offset(
                                    5.0, // horizontal, move right 10
                                    5.0, // vertical, move down 10
                                ),
                            )
                          ],
                      ),
                      child: Column(
                          children:
                          [Row(
                              children:[]
                          )
                          ]
                      )
                          ),

                      ] 
                          )
                          );
  }	
}
