import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:general/lesson_10/Screens/CameraScreen.dart';
import 'package:general/lesson_10/main.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const WhatsappApp());
}
