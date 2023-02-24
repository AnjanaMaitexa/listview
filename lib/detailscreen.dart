import 'package:flutter/material.dart';
import 'package:listview/item.dart';


class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({Key? key,required this.item}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(item.title),
      ),
      body: Center(
        child: Column(
            children:[
              Text(item.longText),
              Image.asset(item.imageUrl,fit: BoxFit.cover,
              height:400,
              width:double.infinity,),
            ]
        ),
      ),
    );
  }
}