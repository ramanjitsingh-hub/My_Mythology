import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_mythology/Pages/login_page.dart';
import 'package:my_mythology/Pages/registeration_page.dart';

import '../Widgets/grid_view.dart';
import '../firebase_options.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title:Text("Homepage"),
        
      ),
      body: Grid_homepage()
              
        );
    
    
  }
}
