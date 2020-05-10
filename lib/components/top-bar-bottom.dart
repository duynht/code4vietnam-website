import 'package:flutter/material.dart';
import 'package:code4vietnam/theme/style.dart';
class TopBarBottom extends StatelessWidget{
	String _top;
	String _middle;
	String _bottom;
  EdgeInsets _edgeInsets;
	TopBarBottom(Map content, EdgeInsets edgeInsets){
		this._top = content['top'];
		this._middle = content['middle'];
		this._bottom = content['bottom'];	
    this._edgeInsets = edgeInsets;
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
				height:170,
				width: MediaQuery.of(context).size.width,
				decoration: BoxDecoration(
						color: primaryColor, 
						),
				child: Padding(
						padding: _edgeInsets,
						child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
                  //Text(_top,style: textStyle),
									Text(_middle,style: middleStyle),
									Text(_bottom,style: textStyle)	
								]
								)
						)
				);
	}
} 
