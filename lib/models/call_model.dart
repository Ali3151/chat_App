import 'package:flutter/material.dart';
class CallModel{
  final String name  ;
  final String time ;
  final String avatar;
  final Icon callType;
  
  CallModel({required this.name,  required this.time, required this.avatar, required this.callType});
  static Icon callRecieve = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,

  );
   static Icon callMissed = Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,

  );

}

List <CallModel> CallData =[
  CallModel(
    name: "layali",
    time: "8:12 am",
     callType: CallModel.callRecieve,
    avatar: "images/layali.jpeg",
  ),
  CallModel(
    name: "Salman",
    time: "9:3 am",
     callType: CallModel.callMissed,
    avatar: "images/salman.jpeg",
  ),
  CallModel(
    name: "Faisel",
    time: "10:32 am",
     callType: CallModel.callRecieve,
    avatar: "images/faisel.jpeg",
  ),
  CallModel(
    name: "Ali",
    time: "8:32 pm",
    avatar: "images/ali.jpg",
    callType: CallModel.callMissed,
  ),
   CallModel(
    name: "Jelle",
    time: "3:50 pm",
    callType: CallModel.callRecieve,
    avatar: "images/jelle.jpeg",
  ),
   CallModel(
    name: "Zandaani",
    time: "7:10 pm",
     callType: CallModel.callMissed,
    avatar: "images/zandaani.jpeg",
  ),
  CallModel(
    name: "Abdi Malik",
    time: "9:12 am",
     callType: CallModel.callRecieve,
    avatar: "images/abdi.jpeg",
  ),

];
