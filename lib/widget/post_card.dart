import 'package:flutter/material.dart';
import 'package:flutter_api/model/brainrots.dart';
import 'package:flutter_api/pages/detail_page.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.brainrots}) : super(key: key);
  final Brainrots brainrots;

  // const PostCard({required this.posts});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return DetailPage(brainrots: brainrots);
            }),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        color: Colors.grey[200],
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(brainrots.id.toString()),
            Text(
              brainrots.name,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            Text(brainrots.body),
          ],
        ),
      ),
    );
  }
}
