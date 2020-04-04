import 'package:flutter/material.dart';

final TextStyle tstitle = const TextStyle(
		fontSize: 36,
		fontFamily: 'Noto Sans'
		);
final TextTheme textTheme = const TextTheme(
		button: const TextStyle(color: Colors.white)	
);

final ThemeData themeData =  ThemeData( 
		primaryColor: Colors.green[400],
		buttonColor: Colors.green[400],
		textTheme: textTheme	
	);
