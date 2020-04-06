import 'package:code4vietnam/components/top-bar.dart';
import 'package:flutter/material.dart';


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
				appBar: TopBar(title: 'Code For Vietnam')
				);
	}	
}
