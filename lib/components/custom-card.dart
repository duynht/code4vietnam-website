import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{


	String _title;
	String _body_content;
	String _bottom_content;

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

	CustomCard(Map content){
		_title = content['title'];
		_body_content = content['body'];
		_bottom_content = content['bottom'];
	}
	@override
	Widget build(BuildContext context){
		return Container(
				//color: Colors.white,
				width: 270,
				height: 260,
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
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Padding( 
									padding: EdgeInsets.only(left:30,top:48),
									child:
									Column( 
											crossAxisAlignment: CrossAxisAlignment.start,
											children: <Widget>[
												Text(_title, textAlign:TextAlign.left, style:tstitle),
												Padding( 
														padding: EdgeInsets.only(top:15),
														child:Text(_body_content, textAlign:TextAlign.left, style:tsbody),
												)
											]
									)
							),
							Padding( 
									padding: EdgeInsets.only(left:30,bottom:50),
									child:
									Text(_body_content,textAlign:TextAlign.left, style:tsbottom),
							)
						],	
						)
								);	
	}	
}
