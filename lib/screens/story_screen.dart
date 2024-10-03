import 'package:flutter/material.dart';

import '../models/story_model.dart';
import '../widgets/story_progress_bar.dart';

class StoryScreen extends StatefulWidget {
  final List<Story> stories;
  final int initialIndex;

  const StoryScreen({super.key, required this.stories, required this.initialIndex});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _progressController;
  late AnimationController _createStoryAnimationController;
  late Animation<double> _createStoryAnimation;
  late Story _currentStory;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: _currentIndex);

    _progressController = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );

    _createStoryAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _createStoryAnimation = CurvedAnimation(
      parent: _createStoryAnimationController,
      curve: Curves.easeInOut,
    );

    _loadStory(story: widget.stories[_currentIndex]);

    // Thêm lắng nghe sự kiện cuộn
    _pageController.addListener(() {
      int newIndex = _pageController.page!.round();
      if (newIndex != _currentIndex) {
        _currentIndex = newIndex;
        _loadStory(story: widget.stories[_currentIndex]);
      }
    });
  }

  void _loadStory({required Story story}) {
    _currentStory = story;

    _progressController.duration = _currentStory.duration;
    _progressController.forward(from: 0);

    _progressController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _nextStory();
      }
    });
  }

  void _nextStory() {
    setState(() {
      if (_currentIndex + 1 < widget.stories.length) {
        _currentIndex += 1;
        _loadStory(story: widget.stories[_currentIndex]);
        _pageController.jumpToPage(_currentIndex);
      } else {
        _createStoryAnimationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _progressController.dispose();
    _createStoryAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.stories.length + 1,
            itemBuilder: (context, index) {
              if (index == widget.stories.length) {
                return Center(
                  child: ScaleTransition(
                    scale: _createStoryAnimation,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.layers_clear_outlined,
                          color: Colors.white,
                          size: 120,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Đã xem hết',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }

              final story = widget.stories[index];
              return Image.network(
                story.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: StoryProgressBar(controller: _progressController),
          ),
          Positioned(
            top: 80,
            right: 30,
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}