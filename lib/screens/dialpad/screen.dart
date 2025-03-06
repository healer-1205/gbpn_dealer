import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../widgets/app_bar.dart';

class DialpadScreen extends StatefulWidget {
  const DialpadScreen({super.key});

  @override
  State<DialpadScreen> createState() => _DialpadScreenState();
}

class _DialpadScreenState extends State<DialpadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Dialpad Screen'),
      ),
    );
  }
}
