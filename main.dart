import 'package:flutter/material.dart';

void main() {
  runApp(MyApp ());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile ',
      theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJa_CcFSwA2X0Y-kYFsSxHaiPE5Z2EOd50FA&s',
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Sophia Carter',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Product Designer",
                    style: TextStyle(color: Colors.blueGrey[400]),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contact',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.email,color: Colors.black54,),
                      SizedBox(width: 10,),
                      Text('sophia@example.com'),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Icon(Icons.phone,color: Colors.black54,),
                      SizedBox(width: 10,),
                      Text('+20 100 123 4567'),
                    ],
                  ),
                  SizedBox(height: 120,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                        padding: EdgeInsets.symmetric(horizontal: 117, vertical: 12),
                      ),
                      child: Text(
                        'Contact Me',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );

  }
}
