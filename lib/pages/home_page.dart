import 'package:chat_app/pages/call_page.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/status_page.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
 
final List<Tab> topTabs = <Tab>[
  Tab(icon: Icon(Icons.camera_alt),),
  Tab(text: 'CHATS',),
  Tab(text: 'STATUS',),
  Tab(text: 'CALLS',)


];
 @override void initState() {
    _tabcontroller = TabController(length: 4, initialIndex: 1, vsync: this)
    ..addListener((){
      setState(() {
        
      });

    });
    super.initState();
  }

  @override
  
  Widget build(BuildContext context) {
   
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('Search Button Clicked');

          }, 
          
          ),
                    IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              print('Three Dot Button Clicked');

          }, 
          
          )
        ],
        title: Text(widget.title),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabcontroller,
          tabs: topTabs
          ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children:[ 
          Text('Camera'),
          chatPage(),
          Status(),
         CallPage(),
          
        
        ]
      ),
      floatingActionButton:_getFAB() ,
      );
      
  }
  _getFAB(){
     if (_tabcontroller.index == 1) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('Open Chat'));
    } else if (_tabcontroller.index == 2) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print('Open Camera'));
    } else if (_tabcontroller.index == 3) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print('Open Call'));
    } else {
      return null;
    }
}
}