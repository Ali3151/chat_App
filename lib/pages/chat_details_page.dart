import 'package:chat_app/pages/message_page.dart';
import 'package:flutter/material.dart';
class chatDetailsPage extends StatefulWidget {
 

  @override
  State<chatDetailsPage> createState() => _chatDetailsPageState();
}

class _chatDetailsPageState extends State<chatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        titleSpacing: 0.0,
        title: Row(
        children: [
          CircleAvatar(
            radius: 15.0,
            backgroundImage:  AssetImage('images/ali.jpg'),
          ),
          Padding(padding: EdgeInsets.only(left: 6.0),
          child: Text('Ali'),
          ),
        
        ],
      ),
      actions: [
        IconButton(
            icon: Icon(Icons.video_call),
            onPressed: (){
              print('Video Call Button Clicked');

          }, 
          
          ),
        IconButton(
            icon: Icon(Icons.call),
            onPressed: (){
              print('Call Button Clicked');

          }, 
          
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              print('Three Dot Button Clicked');

          }, 
          
          ),
      ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white,width: 2.0)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white,width: 2.0)
                      ),
                      hintText: 'Type a Message'
                    ),

                )
                )
              ],
            ),
          )

        ],
      )
       ,
      );
      
    
  }
}