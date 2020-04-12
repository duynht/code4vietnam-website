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
				fontColor: Colors.white	
			);
	TextStyle middleStyle = const TextStyle(
				fontFamily: 'Roboto',
				fontSize: 36,
				fontColor: Colors.white
			);
	@override
	Widget builder(BuildContext context){
		return Container(
				height:160,
				decoporation: BoxDecoration(
						color: Colors.green[700]
						),
				child: Padding(
						padding: EdgeInsets.fromLTBR(96,30,30,40),
						child: Column(
								crossAxisAlignment: CrosssAxisAlignment.start,
								children: <Widget>[
									Text(),
									Text(),
									Text()	
								]
								)
						)
				);
	}
} 
