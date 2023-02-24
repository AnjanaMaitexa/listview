import 'package:flutter/material.dart';
import 'package:listview/detailscreen.dart';
import 'package:listview/item.dart';

void main() {
  runApp( FirstScreen());
}
class FirstScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FirstScreen> {
  List<Item> _itemList = [
    Item(title: "title1", longText: "longtext1", imageUrl: "images/back.jpg"),
    Item(title: "tite2", longText: "longtext2", imageUrl:"images/back.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Sharing data between screens'),
        ),
        body: ListView.builder(
              itemCount: _itemList.length,
              itemBuilder: (context, index) {
                final _item=_itemList[index];
                return Card(
                  // child:_listItem( stocksList[index].name,stocksList[index].icon),

                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage:AssetImage(_item.imageUrl) ,

                    ),
                      title: Text(_item.title,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),

                      onTap: () {
                        Navigator.of(context).push(
                         MaterialPageRoute(
                            builder: (context) => DetailScreen(item:_item),
                          ),
                        );
                      },
                    ),
                  ),
                );

              },
            )));
  }
}