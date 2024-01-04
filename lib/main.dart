import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}
var itemList = [
  {'name':'Laptop','price':'60000 TAKA','image':'https://images.unsplash.com/photo-1602080858428-57174f9431cf?q=80&w=1902&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'PC','price':'80000 TAKA','image':'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?q=80&w=2042&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'Monitor','price':'10000 TAKA','image':'https://images.unsplash.com/photo-1552831388-6a0b3575b32a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'Mouse','price':'1000 TAKA','image':'https://images.unsplash.com/photo-1629429408209-1f912961dbd8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'Key-Board','price':'1500 TAKA','image':'https://images.unsplash.com/photo-1614285457768-646f65ca8548?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'Mouse Pad','price':'100 TAKA','image':'https://images.unsplash.com/photo-1631098983935-5363b8e50edb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'Router','price':'3000 TAKA','image':'https://images.unsplash.com/photo-1606904825846-647eb07f5be2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'DSLR Camera','price':'100000 TAKA','image':'https://images.unsplash.com/photo-1616423640778-28d1b53229bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'Hard Disk','price':'3000 TAKA','image':'https://images.unsplash.com/photo-1601737487795-dab272f52420?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
  {'name':'SSD Card','price':'5000 TAKA','image':'https://images.unsplash.com/photo-1659543038858-9673fc324a89?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'},
];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Computer Shop'),
        actions: [
          IconButton(onPressed: (){MySnackBar("I am Search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am More",context);}, icon: Icon(Icons.more_vert)),
        ],
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: itemList.length,
          itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){MySnackBar("Price : ${itemList[index]['price'].toString()}", context);},
            child: Container(
              margin: EdgeInsets.all(8.0),
              height: 250,
              width: double.infinity,
              child: Image.network(itemList[index]['image'].toString(),fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}

