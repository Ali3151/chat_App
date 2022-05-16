import 'package:chat_app/models/chat_models.dart';
import 'package:chat_app/pages/chat_details_page.dart';
import 'package:flutter/material.dart';
class chatPage extends StatefulWidget {
  const chatPage({ Key? key }) : super(key: key);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context , i)=> Column(
          children: [
            Divider(
              height: 8.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(chatData[i].avatar),
              ),
              title: Text(chatData[i].name,style: TextStyle(
                //color: Colors.white,
                
                fontWeight: FontWeight.bold
              ),
              ),
               subtitle: Text(chatData[i].Message,style: TextStyle(
               // color: Colors.white,
                fontSize: 15.0,
                
              ),
              ),
              trailing: Text(chatData[i].time,
            ),
            onTap: (){
              // print('Chat Details Open');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>chatDetailsPage
              ()));
            },
            ),
          ],
        ))
      
    );
  }
}