import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/home_title_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;
  String _videoUrl =
      "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4";

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(_videoUrl)
      ..initialize().then((_) {
        setState(() {});
        print("Video initialized");
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              /*_controller.value.isInitialized
                  ? VideoPlayer(_controller)
                  : const CircularProgressIndicator(),*/
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Image.network(
                    "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/73/31/f1.jpg",
                    fit: BoxFit.cover,
                    width: 800.0),
              ),
              SizedBox(height: 16.0),
              HomeTitleWidget(title: 'Recommendations'),
              CustomCarouselSlider(),
              SizedBox(height: 16.0),
              HomeTitleWidget(title: 'Top related places'),
              CustomCarouselSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
