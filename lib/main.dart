import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_recorder/pages/camera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(), // 
    );
  }
}

// Rename the StatefulWidget to avoid conflicts
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:  Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splashScreen.png'), // Asset Image
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
          ),
      const Center(
        child: Text(
          "",
          style: TextStyle(fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold),
        ),
      ),   ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const CameraPage()),
          );
        },
        child: const Icon(Icons.photo_camera_sharp), 
      ),
    );
  }
}
