import 'package:flutter/material.dart';
import '../data/user_data.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Danh sách bạn bè"),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final user = friends[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 0,
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                /// TODO:
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text(
                  user.displayName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: user.mutualFriends.isNotEmpty
                    ? Text("Có ${user.mutualFriends.length} bạn chung")
                    : const Text("Không có bạn bè chung"),
              ),
            ),
          );
        },
      ),
    );
  }
}
