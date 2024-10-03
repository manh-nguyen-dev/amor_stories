class Story {
  final String userName;
  final String imageUrl;
  final Duration duration;
  bool isViewed;

  Story({
    required this.userName,
    required this.imageUrl,
    required this.duration,
    this.isViewed = false,
  });
}
