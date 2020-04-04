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

final ThemeData themeData =  ThemeData( 
		primaryColor: Colors.green[400],
		buttonColor: Colors.green[400],
		textTheme: textTheme	
	);
