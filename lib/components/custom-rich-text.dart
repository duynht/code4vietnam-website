import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget{
  
  String _title;
  String _content;
  TextStyle _textStyle;

  static const TextStyle defaultTextStyle = const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 18, 
      color: const Color.fromRGBO(79,79,79,1),
      fontWeight: FontWeight.w100
  );

  CustomRichText(Map content, TextStyle titleTextStyle){
    this._title = content['title'];
    this._content = content['content'];
    this._textStyle = titleTextStyle; 
  }

  @override
  Widget build(BuildContext context){
    return Column(	crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,20),
              child: Text(_title, style: _textStyle)
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0,0,0,0),
              child: Text(
                  _content,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18, 
                      color: Color.fromRGBO(0,0,0,1),
                      fontWeight: FontWeight.w100
                  )
              )
          ),
        ]
            );
  }
}
