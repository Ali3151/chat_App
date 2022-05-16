
class StatusModel{
  final String name  ;
  final String time ;
  final String avatar;

  StatusModel({required this.name,  required this.time, required this.avatar});
 
}

List <StatusModel> StatusData =[
  StatusModel(
    name: "Faisel",
    time: "1h ago",
    avatar: "images/faisel.jpeg",
  ),
  StatusModel(
    name: "Salmaan",
    time: "2h ago",
    avatar: "images/salman.jpeg",
  ),
  StatusModel(
    name: "Ali",
    time: "3h ago",
    avatar: "images/ali.jpg",
   
  ),
   StatusModel(
    name: "Jelle",
   time: "5h ago",
    avatar: "images/jelle.jpeg",
  ),
   StatusModel(
    name: "Zandaani",
    time: "7h ago",
    avatar: "images/zandaani.jpeg",
  ),
  StatusModel(
    name: "Abdi Malik",
    time: "8h ago",
    avatar: "images/abdi.jpeg",
  ),
  StatusModel(
    name: "Layali",
    time: "9h ago",
    avatar: "images/layali.jpeg",
  ),

];
