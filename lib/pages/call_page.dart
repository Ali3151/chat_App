import 'package:chat_app/models/call_model.dart';
import 'package:flutter/material.dart';
class CallPage extends StatefulWidget {
  const CallPage({ Key? key }) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: CallData.length,
        itemBuilder: (context , i)=> Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(CallData[i].avatar),
              ),
              title: Text(CallData[i].name,style: TextStyle(
                //color: Colors.white,
                
                fontWeight: FontWeight.bold
              ),
              ),
               subtitle: Row(
                 
                 children: [
                   Container(
                     child: CallData[i].callType,
                     ),
                     Text(CallData[i].time,style: TextStyle(
                //color: Colors.white,
                fontSize: 15)
                     )
                 ],
              ),
              
              
               
              trailing: Icon(Icons.call,
              size: 25,
              color: Theme.of(context).primaryColor,
              ),
            // onTap: (){
            //   // print('Chat Details Open');
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>chatDetailsPage
            //   ()));
            // },
            ),
          ],
        ))
      
    );
  }
}