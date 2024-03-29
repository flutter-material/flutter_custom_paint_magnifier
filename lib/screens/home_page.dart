import 'package:flutter/material.dart';
import 'pick_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('measure object'),
      ),
      body: const Center(
        child: Text('點擊右下角+啟動相機'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const PickImage();
          }));
        },
        backgroundColor: const Color(0xFF4E3629),
        child: const Icon(Icons.add),
      ),
    );
  }
}
