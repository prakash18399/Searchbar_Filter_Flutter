import 'package:flutter/material.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
        title: Text('Searchbar filter')
          ),
        body: Center(
          child: ListSearch()
          )
        )
      );
  }
}
 
class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}
 
class ListSearchState extends State<ListSearch> {
 
  TextEditingController _textController = TextEditingController();
 
  static List<String> mainDataList = [
   "Anand", 
   "Ananda", 
   "Anamika",
   "Ananya",
   "Arthur",
   "Bharat",
   "Brandon",
   "Bhavneet",
   "Bilal",
   "Chandan",
   "Chirag",
   "Chetan",
   "Chandu",
   "Deepak",
   "Devendra",
   "Daniel",
   "Dev",
   "Dilip",
   "Ekta",
   "Evan",
   "Erik",
   "Esey",
   "Faizal",
   "Farida",
   "Gautam",
   "Ganesh",
   "Gopal",
   "Ganga",
   "Hari",
   "Harshal",
   "Hemant",
   "Harshada",
   "Harshali",
   "Ishant",
   "Ishwar",
   "Irfan",
   "Ivan",
   "Ismail",
   "Jagdish"
   "Jayant",
   "Jay",
   "Jordan",
   "Jerry",
   "Kamal",
   "Kishor",
   "Kundan",
   "Kabir",
   "Karishma",
   "Lalit",
   "Laxman",
   "Lalita",
   "Lalima",
   "Lenert",
   "Manish",
   "Mohan",
   "Mokshada",
   "Maria",
   "Martin"
   "Naresh",
   "Neelu",
   "Navya",
   "Nitin",
   "Naina",
   "Om",
   "Omkar",
   "Omar",
   "Ojas",
   "Omdutta",
   "Prakash",
   "Preyash",
   "Preeti",
   "Pankaj",
   "Pavan",
   "Pritesh",
   "Prashant",
   "Rajesh",
   "Ram",
   "Ritik",
   "Ritika",
   "Rohan",
   "Ronny",
   "Shubham",
   "Shailesh",
   "Samiksha",
   "Shatendra",
   "Samir",
   "Sahil",
   "Tejas",
   "Tanya",
   "Tata",
   "Tanuj",
   "Tanmay",
   "Tanishk"
   "Utkarsha",
   "Uday",
   "Virendra",
   "Vijay",
   "Vishal",
   "Yogesh",
   "Zeeshan"
  ];
 
  
  List<String> newDataList = List.from(mainDataList);
 
  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Search Here...',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0.0),
              children: newDataList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: ()=> print(data),);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}