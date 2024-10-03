import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserItem extends StatelessWidget {
  final User user;

  const UserItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey.shade200)),
      width: 120,
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage:
                NetworkImage(user.avatar), // Sử dụng URL từ mô hình User
          ),
          const SizedBox(height: 8),
          Text(
            user.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 35,
            child: user.mutualFriends.isNotEmpty
                ? Text(
                    "Bạn bè với ${user.mutualFriends[0].name}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  )
                : const Text(
                    "Gợi ý cho bạn",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              print('Kết bạn ${user.name}'); // Placeholder action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            ),
            child: const Text(
              "Kết bạn",
              style: TextStyle(
                color: Colors.white, // Chữ trắng
              ),
            ),
          ),
        ],
      ),
    );
  }
}
