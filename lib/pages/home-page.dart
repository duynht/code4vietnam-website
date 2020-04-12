import 'package:code4vietnam/components/top-bar.dart';
import 'package:flutter/material.dart';
import 'package:code4vietnam/components/custom-card-list.dart';


Map map = {"title": "Test", "body": "something bla bla here", "bottom": "bla bla here"};
List<Map> a = [map,map,map,map];


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
				backgroundColor: Colors.grey[200],
				appBar: TopBar(title: 'Code For Vietnam'),
				body: Column(
						children: [
							Padding(padding: EdgeInsets.only(left:96, right: 96), child: CustomCardList(a))
						] 
				)
		);
	}	
}
