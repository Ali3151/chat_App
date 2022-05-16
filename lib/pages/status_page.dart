import 'package:chat_app/models/status_model.dart';
import 'package:flutter/material.dart';
class Status extends StatefulWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage('images/no_image.jpg'),
              ),
              title: Text('M Status',style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
               subtitle: 
                     Text('Tap to add status update ',
                     style: TextStyle(
                //color: Colors.white,
                fontSize: 15)
                     ),
              onTap: (){
                print('M own Status Details Open');
              },
        ),
        Divider(),
        Padding(padding: EdgeInsets.only(left: 20.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text('Recent Updates',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.black54,
          fontWeight: FontWeight.bold
          ),
          ),
          ),
        ),
        Flexible(child: ListView.builder(
          itemCount: StatusData.length,
          itemBuilder: (context,i) =>Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage(StatusData[i].avatar),
              ),
              title: Text(StatusData[i].name,style: TextStyle(
                //color: Colors.white,
                
                fontWeight: FontWeight.bold
              ),
              ),
               subtitle: Text(StatusData[i].time,style: TextStyle(
               // color: Colors.white,
                fontSize: 15.0,
                
              ),
              ),
              ),
            ],
          )
          )
          )

      ]
    );
  }
}