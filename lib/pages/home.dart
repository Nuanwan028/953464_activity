import 'dart:convert';

import 'package:firstapp/pages/detail.dart';
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
      child: FutureBuilder(
        builder: (context, snapshot) {
          var data = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return MyBox(
                data[index]['title'],
                data[index]['subtitle'],
                data[index]['image_url'],
              );
            },
            itemCount: data.length,
          );
        },
        future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      // height: 175,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 205, 248),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 15)),
          SizedBox(height: 15),
          TextButton(
            onPressed: () {
              print("Next Page >>");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage()),
              );
            },
            child: Text(
              "read more",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
