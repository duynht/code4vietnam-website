import 'package:flutter/material.dart';
import 'package:code4vietnam/theme/style.dart';
class TopBarBottom extends StatelessWidget{
	String _top;
	String _middle;
	String _bottom;
	TopBarBottom(Map content){
		this._top = content['top'];
		this._middle = content['middle'];
		this._bottom = content['bottom'];	
	}

	TextStyle textStyle = const TextStyle(
				fontFamily: 'Roboto',
			       	fontSize: 18,
				color: Colors.white	
			);
	TextStyle middleStyle = const TextStyle(
				fontFamily: 'Roboto',
				fontSize: 36,
				color: Colors.white,
				fontWeight: FontWeight.w500
			);
	@override
	Widget build(BuildContext context){
		return Container(
				height:150,
				width: MediaQuery.of(context).size.width,
				decoration: BoxDecoration(
						color: primaryColor, 
						),
				child: Padding(
						padding: EdgeInsets.fromLTRB(96,25,40,25),
						child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									Text(_top,style: textStyle),
									Text(_middle,style: middleStyle),
									Text(_bottom,style: textStyle)	
								]
								)
						)
				);
	}
} 
