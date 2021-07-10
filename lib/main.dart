import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'HomePage.dart';

List<CameraDescription> cameras;

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Detection',
      home: HomePage(),
    );
  }
}