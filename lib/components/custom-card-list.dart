import 'package:flutter/material.dart';
import 'package:code4vietnam/components/custom-card.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCardList extends StatelessWidget{

	List<Map> _content;

	CustomCardList(List<Map> content){
		this._content = content;	
		print(_content);
	}
	List<CustomCard> _customCardList = new List();
	List<CustomCard> _CreateCard(){
		List<CustomCard> cards = new List();
		for(int i = 0; i < _content.length; ++i){
			cards.add(new CustomCard(_content[i]));	
		}
		return cards;
	}
	Widget builder(context){
		if(MediaQuery.of(context).size.width >= 320 * _customCardList.length){
			return	Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children:[
						Padding(
								padding: EdgeInsets.only(top:70,bottom:30), 
								child: 
								Text('Featured Projects',
										style: TextStyle(
												fontFamily: 'Roboto',
												fontWeight: FontWeight.bold,
												fontSize:36,
												color: Colors.grey[800]
										)	
								),
						),				       	Row(
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						children: _customCardList
						)
					]
			);		
		}
		else return Column( children: [
			Padding(
					padding: EdgeInsets.only(top:70,bottom:30), 
					child: 
					Text('Featured Projects',
							style: TextStyle(
									fontFamily: 'Roboto',
									fontWeight: FontWeight.bold,
									fontSize:36,
									color: Colors.grey[800]
							)	
					),
			),
			CarouselSlider(
					height:260,
					autoPlay: true,
					viewportFraction: 0.8,
					autoPlayAnimationDuration: Duration(milliseconds: 1200),
					autoPlayInterval: Duration(seconds: 3),
					items: _customCardList
			)]
					);
	}
	@override
	Widget build(BuildContext context){
		if(_content.length == 0) 
			return Container();
		else{
			_customCardList = _CreateCard();
			print(_customCardList);
			return builder(context);
		}
	}

}
