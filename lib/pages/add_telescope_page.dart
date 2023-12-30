import 'package:flutter/material.dart';

class AddTelescopePage extends StatefulWidget {
  static const String routeName = 'addtelescope';
  const AddTelescopePage({super.key});

  @override
  State<AddTelescopePage> createState() => _AddTelescopePageState();
}

class _AddTelescopePageState extends State<AddTelescopePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Telescope'),
      ),
      body: const Center(

      ),
    );
  }
}
