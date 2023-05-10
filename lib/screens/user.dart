import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 252, 252, 252),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Videos",
                textAlign: TextAlign.left,
                style: TextStyle(color: Color.fromARGB(197, 0, 0, 0)),
              ),
              Text(
                "See all",
                textAlign: TextAlign.left,
                style: TextStyle(color: Color(0xFF2F00F2), fontSize: 16),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...allVideo.map((e) => Padding(
                        padding: EdgeInsets.only(
                            left: allVideo.indexOf(e) == 0 ? 20 : 5, right: 5),
                        child: VideoCard(e.img, e.msg, e.title),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(360, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () => {},
                  child: const Text(
                    "+ Record new video",
                    style: TextStyle(fontSize: 20, color: Color(0xFF2F00F2)),
                  )),
            )
          ],
        )));
  }
}

class Video {
  final String img, title, msg;
  Video({required this.img, required this.title, required this.msg});
}

List<Video> allVideo = [
  Video(
      img: "https://picsum.photos/id/123/200/300",
      title: "My Intro Video,Some Title 1",
      msg:
          "Learn more about me, my services, my communication style, and how I can help."),
  Video(
      img: "https://picsum.photos/id/234/200/300",
      title: "My Intro Video,Some Title 2",
      msg:
          "Learn more about me, my services, my communication style, and how I can help."),
  Video(
      img: "https://picsum.photos/id/654/200/300",
      title: "My Intro Video,Some Title 3",
      msg:
          "Learn more about me, my services, my communication style, and how I can help.")
];

class VideoCard extends StatelessWidget {
  final String img, title, msg;
  const VideoCard(this.img, this.msg, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 470,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 260,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFF2F00F2),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 34,
                    )),
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                msg,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
