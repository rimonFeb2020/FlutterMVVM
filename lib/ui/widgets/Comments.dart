import 'package:flutter/material.dart';

class Comments extends StatelessWidget {

  final int postId;

  Comments(this.postId);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('i am comments'));
  }
}
