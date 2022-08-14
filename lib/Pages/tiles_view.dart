import 'package:flutter/material.dart';


class TilesView extends StatefulWidget {
  const TilesView({super.key});

  @override
  State<TilesView> createState() => _TilesViewState();
}

class _TilesViewState extends State<TilesView> {
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
    );
  }
}
