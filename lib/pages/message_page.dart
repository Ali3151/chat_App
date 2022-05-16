import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
class MessagePage extends StatefulWidget {
  const MessagePage({ Key? key }) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
   ScrollController _myController = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance?.addPostFrameCallback((_) { 
      _myController.jumpTo(_myController.position.maxScrollExtent);
    });
   
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        controller: _myController,
        children: [Bubble(
  alignment: Alignment.center,
  color: Color.fromRGBO(212, 234, 244, 1.0),
  child: Container(
      child: Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0))),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  radius: Radius.zero,
  alignment: Alignment.topRight,
  nipWidth: 8,
  nipHeight: 24,
  nip: BubbleNip.rightTop,
  color: Color.fromRGBO(225, 255, 199, 1.0),
  child: Text('Asc!', textAlign: TextAlign.right),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  radius: Radius.zero,
  alignment: Alignment.topLeft,
  nipWidth: 8,
  nipHeight: 24,
  nip: BubbleNip.leftTop,
  child: Text('Wlsm!'),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  radius: Radius.elliptical(5.0, 10.0),
  alignment: Alignment.topRight,
  nipWidth: 30,
  nipHeight: 10,
  nip: BubbleNip.rightTop,
  color: Color.fromRGBO(225, 255, 199, 1.0),
  child: Text('Flutter Kwrn!', textAlign: TextAlign.right),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  radius: Radius.elliptical(5.0, 10.0),
  alignment: Alignment.topLeft,
  nipWidth: 30,
  nipHeight: 10,
  nip: BubbleNip.leftTop,
  child: Text('Way fududahay Eng!'),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  radius: Radius.circular(20.0),
  alignment: Alignment.topRight,
  nip: BubbleNip.rightTop,
  color: Color.fromRGBO(225, 255, 199, 1.0),
  child: Text('is flutter prequest or!', textAlign: TextAlign.right),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  radius: Radius.circular(20.0),
  alignment: Alignment.topLeft,
  nip: BubbleNip.leftTop,
  child: Text('No Only Dart!'),
),
Bubble(
  margin: BubbleEdges.only(top: 10),
  alignment: Alignment.center,
  nip: BubbleNip.no,
  color: Color.fromRGBO(212, 234, 244, 1.0),
  child: Text('TOMORROW', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
),
  
        ],

      ),
    );
  }
}