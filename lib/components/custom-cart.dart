import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
	final String title;
	final String body_content;
	final String bottom_content;

	CustomCard({Key key, this.title, this.body_content, this.bottom_content}) : super(key: key);

	@override
	Widget build(BuildContext context){
		return Container(
				child: Column(
						children: <Widget>[
							Padding(
									padding: EdgeInsets.fromLTRB(0,0,0,0),
									child: Text(title),
							),
							Padding(
									padding: EdgeInsets.fromLTRB(0,0,0,0),	
									child: Text(body_content),
							),
							Padding(
									padding: EdgeInsets.fromLTRB(0,0,0,0),	
									child: Text(bottom_content),
							)
						],	
				)
		);	
	}	
}
