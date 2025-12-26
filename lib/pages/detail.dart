import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final v1, v2, v3, v4;
  const DetailsPage(this.v1, this.v2, this.v3, this.v4);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var _v1, _v2, _v3, _v4;
  @override
  void initState() {
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        backgroundColor: const Color.fromARGB(255, 232, 188, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              _v1,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(_v2, style: const TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(_v3, height: 300, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(_v4, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
