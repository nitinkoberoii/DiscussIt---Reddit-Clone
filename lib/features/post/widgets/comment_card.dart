import 'package:discuss_it/models/comment_model.dart';
import 'package:discuss_it/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentCard extends ConsumerWidget {
  final Comment comment;
  const CommentCard({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Responsive(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(comment.profilePic),
                  radius: 18,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'u/${comment.username}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(comment.text),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.reply),
                ),
                const Text('Reply'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
