import 'package:flutter/material.dart';
import '../data/user_data.dart';

class DiscoverFriendScreen extends StatelessWidget {
  const DiscoverFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Có thể bạn quen"),
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: suggestedUsers.length,
        itemBuilder: (context, index) {
          final user = suggestedUsers[index];
          return Card(
            elevation: 0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.avatar),
              ),
              title: Text(
                user.displayName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: user.mutualFriends.isNotEmpty
                  ? Text(
                      "Bạn bè với ${user.mutualFriends[0].name}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      maxLines: 2,
                    )
                  : const Text(
                      "Gợi ý cho bạn",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
              trailing: ElevatedButton(
                onPressed: () {
                  print('Kết bạn ${user.name}');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                ),
                child: const Text(
                  "Kết bạn",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
