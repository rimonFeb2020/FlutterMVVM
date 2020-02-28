import 'package:flutter/material.dart';
import 'package:learing_mvvm/core/model/comment.dart';
import 'package:learing_mvvm/ui/shared/app_color.dart';
import 'package:learing_mvvm/ui/shared/ui_helper.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem(this.comment);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: commentColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            comment.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          UIHelper.verticalSpaceSmall(),
          Text(comment.body),
        ],
      ),
    );
  }
}
