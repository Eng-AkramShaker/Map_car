import 'package:flutter/material.dart';
import 'package:map_car/controllers/home_provider.dart';
import 'package:provider/provider.dart';

class ConvertingScreen extends StatefulWidget {
  const ConvertingScreen({super.key});

  @override
  State<ConvertingScreen> createState() => _ConvertingScreenState();
}

class _ConvertingScreenState extends State<ConvertingScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Controller_Home>(builder: (context, proHome, child) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: const Text('ConvertingScreen'),
            ),
          ],
        ),
      );
    });
  }
}
