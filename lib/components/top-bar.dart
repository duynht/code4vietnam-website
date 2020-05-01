import 'package:flutter/material.dart';
import 'package:code4vietnam/theme/style.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  TopBar({Key key, this.title});
  @override
  Size get preferredSize {
    return new Size.fromHeight(100.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(96, 25, 0, 25),
              child: Text(title, style: tstitle),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 35, 25),
                child: RaisedButton(
                    onPressed: () {},
                    child: Text('EN/VN', style: tsraisedbutton)))
          ],
        ),
      )
    ]);
  }
}
