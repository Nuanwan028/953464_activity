import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          MyBox(),
          SizedBox(height: 24),
          MyBox(),
          SizedBox(height: 24),
          MyBox(),
        ],
      ),
    );
  }

  Widget MyBox() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 205, 248),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            "https://pbs.twimg.com/media/GJ2Y3y7aMAAtMpP.jpg", 
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What is computer", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
          Text(
            "A computer is an electronic device for processing data.",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
