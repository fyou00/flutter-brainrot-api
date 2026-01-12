import 'package:flutter/material.dart';
import 'package:flutter_api/model/brainrots.dart';

class DetailPage extends StatelessWidget {
  final Brainrots brainrots;
  const DetailPage({Key? key, required this.brainrots}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('id: ${brainrots.id}'),
          Text('Name: ${brainrots.name}'),
        const SizedBox(
          height: 20,
        ),
        const Text('Body: '),
        Text(brainrots.body)
        ],)
      ),
    );
  }
}