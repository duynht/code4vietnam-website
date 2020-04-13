import 'package:flutter/material.dart';

final TextStyle tstitle = const TextStyle(
		fontSize: 36,
		fontFamily: 'Noto Sans'
		);
final TextStyle tsraisedbutton = const TextStyle(
		fontSize: 18,
		fontFamily: 'Noto Sans',
		color: Colors.white
		);
final TextTheme textTheme = const TextTheme(
		button: const TextStyle(color: Colors.white)	
);

final Color primary_color = Color.fromRGBO(33,150,83,1);
final ThemeData themeData =  ThemeData( 
		primaryColor: primary_color,
		buttonColor: primary_color,
		textTheme: textTheme	
	);
