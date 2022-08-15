import 'package:flutter/material.dart';

class Grid_homepage extends StatefulWidget {
  const Grid_homepage({super.key});

  @override
  State<Grid_homepage> createState() => _Grid_homepageState();
}

class _Grid_homepageState extends State<Grid_homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: [] ,),
    );
  }
}
