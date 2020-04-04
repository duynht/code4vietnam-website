import 'package:flutter/material.dart';
import 'package:code4vietnam/theme/style.dart';
class TopBar extends StatelessWidget implements PreferredSizeWidget{
	final String title;
	TopBar({Key key, this.title}) : super(key: key);
	@override
	Size get preferredSize {
		return new Size.fromHeight(92.0);
	}

	@override
	Widget build(BuildContext context){
		return Container(
				child: Row(
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						children: <Widget>[
							Padding( 
									padding: EdgeInsets.fromLTRB(96,26,0,26),
									child:  
										Text(title, style: tstitle),
							),
							Padding(	
									padding: EdgeInsets.fromLTRB(0,26,26,36),
									child:
									RaisedButton(
											onPressed: (){},
											child: Text('EN/VN')	


									)
							)
						],)	
		);	
	}
}
