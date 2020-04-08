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
			fontWeight: FontWeight.w300, //light
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
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Padding( 
									padding: EdgeInsets.only(left:30,top:48),
									child:
									Column( 
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
										Text(title, textAlign:TextAlign.left, style:tstitle),
										Padding( 
												padding: EdgeInsets.only(top:15),
												child:Text(body_content, textAlign:TextAlign.left, style:tsbody),
												)
									]
									)
								),
							Padding( 
									padding: EdgeInsets.only(left:30,bottom:50),
									child:
									Text(bottom_content,textAlign:TextAlign.left, style:tsbottom),
							)
						],	
				)
						);	
	}	
}
