import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
	final String title;
	final String body_content;
	final String bottom_content;

	final TextStyle tstitle = const TextStyle(
			fontFamily: 'Roboto',
			fontSize: 24,	
	);
	final TextStyle tsbody = const TextStyle(
			fontFamily: 'Roboto',
			fontSize: 18,
			fontWeight: FontWeight.w300 //light
	);
	final TextStyle tsbottom = const TextStyle(
			fontFamily: 'Roboto',
			fontSize:18,
			fontWeight: FontWeight.w300,
			decoration: TextDecoration.underline,
	);

	CustomCard({Key key, this.title, this.body_content, this.bottom_content}) : super(key: key);

	@override
	Widget build(BuildContext context){
		return Container(
				color: Colors.white,
				width: 270,
				height: 260,
				child: Column(
						children: <Widget>[
							Padding(
									padding: EdgeInsets.fromLTRB(30,48,0,0),
									child: Text(title,style:tstitle),
							),
							Padding(
									padding: EdgeInsets.fromLTRB(30,15,0,0),	
									child: Text(body_content,style:tsbody),
							),
							Padding(
									padding: EdgeInsets.fromLTRB(30,0,0,50),	
									child: Text(bottom_content, style:tsbottom),
							)
						],	
				)
		);	
	}	
}
