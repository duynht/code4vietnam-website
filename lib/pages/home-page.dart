import 'package:code4vietnam/components/top-bar.dart';
import 'package:flutter/material.dart';
import 'package:code4vietnam/components/custom-card-list.dart';
import 'package:code4vietnam/components/top-bar-bottom.dart';
import 'package:code4vietnam/theme/style.dart';
import 'package:code4vietnam/components/custom-rich-text.dart';

List<Map> featureProjectList = [
  {"title": "Test", "body": "something bla bla here", "bottom": "bla bla here"},
  {"title": "Test", "body": "something bla bla here", "bottom": "bla bla here"},
  {"title": "Test", "body": "something bla bla here", "bottom": "bla bla here"},
  {"title": "Test", "body": "something bla bla here", "bottom": "bla bla here"}
];
Map topbarbottom = {
  "top": "",
  "middle": "Build impactful tech solution for social causes",
  "bottom": "A project by IT students in Vietnam"
};
Map map2 = {"title": "asdfadsfasdfasdf", "content": "asdfadsfasdfadsfadsfadf"};

class HomePage extends StatefulWidget {
  final String title;
  HomePage({Key key, this.title});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int WIDTHSIZE = 1000;

  EdgeInsets GetPadding(BuildContext context, double top, double bottom) {
    double padding = ((MediaQuery.of(context).size.width) - 1450) / 2 + 100;
    padding = (padding > 0) ? padding : 55;
    return EdgeInsets.only(
        left: padding, right: padding, top: top, bottom: bottom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: TopBar(
          title: 'Code For Vietnam',
          edgeInsets: GetPadding(context, 0, 0),
        ),
        body: ListView(children: [
          TopBarBottom(topbarbottom, GetPadding(context, 25, 25)),
          Padding(
              padding: GetPadding(context, 0, 0),
              child: CustomCardList(featureProjectList)),
          Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  child: InkWell(
                      onTap: () {},
                      child: Text("View all projects",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w300))))),
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
              child: Padding(
                  padding: GetPadding(context, 85, 55),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (MediaQuery.of(context).size.width >= WIDTHSIZE)
                            ? CustomRichText(
                                map2,
                                TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 36,
                                    color: const Color.fromRGBO(79, 79, 79, 1),
                                    fontWeight: FontWeight.w500))
                            : Center(
                                child: CustomRichText(
                                    map2,
                                    TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 36,
                                        color: const Color.fromRGBO(
                                            79, 79, 79, 1)))),
                        (MediaQuery.of(context).size.width >= WIDTHSIZE)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    Container(
                                        width: 560,
                                        child: CustomRichText(
                                            map2,
                                            TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: primaryColor,
                                                fontWeight: FontWeight.w100))),
                                    Container(width: 130),
                                    Container(
                                        width: 560,
                                        child: CustomRichText(
                                            map2,
                                            TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: primaryColor,
                                                fontWeight: FontWeight.w100)))
                                  ])
                            : Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    Container(
                                        width: 560,
                                        child: CustomRichText(
                                            map2,
                                            TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: primaryColor,
                                                fontWeight: FontWeight.w100))),
                                    Container(width: 130),
                                    Container(
                                        width: 560,
                                        child: CustomRichText(
                                            map2,
                                            TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                color: primaryColor,
                                                fontWeight: FontWeight.w100)))
                                  ])),
                        Center(
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                child: RaisedButton(onPressed: () {})))
                      ]))),
          Padding(
              padding: GetPadding(context, 85, 55),
              child: (MediaQuery.of(context).size.width >= WIDTHSIZE)
                  ? Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                          width: 560,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomRichText(
                                  map2,
                                  TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 36,
                                      color:
                                          const Color.fromRGBO(79, 79, 79, 1),
                                      fontWeight: FontWeight.w500)),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                  child: RaisedButton(onPressed: () {}))
                            ],
                          )),
                      Container(width: 130),
                      Container(
                          width: 560,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomRichText(
                                  map2,
                                  TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 36,
                                      color:
                                          const Color.fromRGBO(79, 79, 79, 1),
                                      fontWeight: FontWeight.w500)),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                  child: RaisedButton(onPressed: () {}))
                            ],
                          )),
                    ])
                  : Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Container(
                              width: 560,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRichText(
                                      map2,
                                      TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 36,
                                          color: const Color.fromRGBO(
                                              79, 79, 79, 1),
                                          fontWeight: FontWeight.w500)),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                      child: RaisedButton(onPressed: () {}))
                                ],
                              )),
                          Container(width: 130),
                          Container(
                              width: 560,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRichText(
                                      map2,
                                      TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 36,
                                          color: const Color.fromRGBO(
                                              79, 79, 79, 1),
                                          fontWeight: FontWeight.w500)),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                                      child: RaisedButton(onPressed: () {}))
                                ],
                              )),
                        ]))),
          Container(
              height: 560,
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
              child: Column(children: [])),
        ]));
  }
}
