class User {
  final String id;
  final String name;
  final String displayName;
  final String avatar;
  final List<User> mutualFriends;

  User({
    required this.id,
    required this.name,
    required this.displayName,
    required this.avatar,
    required this.mutualFriends,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      displayName: json['displayName'],
      avatar: json['avatar'],
      mutualFriends: (json['mutualFriends'] as List)
          .map((friendJson) => User.fromJson(friendJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'displayName': displayName,
      'avatar': avatar,
      'mutualFriends': mutualFriends.map((friend) => friend.toJson()).toList(),
    };
  }
}
