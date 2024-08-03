import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_recorder/pages/camera.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(), // Use a different widget as the home
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
      body: const Center(
        child: Text(
          "Flutter camera and video recording app",
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const CameraPage()),
          );
        },
        label: const Text('Camera'), // Correctly using a Text widget for the label
        icon: const Icon(Icons.photo_camera_sharp), // Add the icon here
      ),
    );
  }
}
