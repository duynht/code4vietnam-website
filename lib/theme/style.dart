import 'package:flutter/material.dart';

final Color primaryColor = const Color.fromRGBO(33,150,83,1);
final Color backgroundColor = const Color.fromRGBO(226,226,226,1);
final Color defaultTitleColor = const Color.fromRGBO(79,79,79,1);

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
		primaryColor: primaryColor,
		buttonColor: primaryColor,
		textTheme: textTheme	
	);
