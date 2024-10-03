import 'package:flutter/material.dart';
import '../models/story_model.dart';

class StoryItem extends StatelessWidget {
  final Story story;

  const StoryItem({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 80,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: story.isViewed ? Colors.grey : Colors.pink, // Change border color based on viewed status
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(story.imageUrl),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            story.userName,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
