import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  ScrollController _scrollView = ScrollController();
  int nowCard = 0;

  @override
  void initState() {
    _scrollView.addListener(() {
      //listener

      //.offset is double value
      /* Outputs --------
          I/flutter (26854): 32.349831321022975
          I/flutter (26854): 33.07679332386385
          I/flutter (26854): 33.80375532670473
          I/flutter (26854): 34.530717329545666
          I/flutter (26854): 35.2576793323866
          I/flutter (26854): 35.62113813920479
          I/flutter (26854): 35.984641335227536
          I/flutter (26854): 36.34810014204572
          I/flutter (26854): 36.71160333806847
          I/flutter (26854): 37.07506214488666
          I/flutter (26854): 37.80202414772759
          I/flutter (26854): 38.16552734375034
      */

      setState(() {
        int page = _scrollView.offset.toInt();
        nowCard = page ~/ 200;

        //update state
      });
    });
    super.initState();
  }

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
              controller: _scrollView,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...allVideo.map((e) => Padding(
                        padding: EdgeInsets.only(
                            left: allVideo.indexOf(e) == 0 ||
                                    allVideo.indexOf(e) == allVideo.length - 1
                                ? 20
                                : 5,
                            right: 5),
                        child: VideoCard(e.img, e.msg, e.title),
                      ))
                ],
              ),
            ),
            Container(
              width: 200,
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ...allVideo.map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: nowCard == allVideo.indexOf(e)
                          ? Color(0xFF2F00F2)
                          : Colors.black12,
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(360, 50),
                    backgroundColor: Colors.white,
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
      img: "https://picsum.photos/id/321/200/300",
      title: "My Intro Video,Some Title 3",
      msg:
          "Learn more about me, my services, my communication style, and how I can help."),
  Video(
      img: "https://picsum.photos/id/555/200/300",
      title: "My Intro Video,Some Title 4",
      msg:
          "Learn more about me, my services, my communication style, and how I can help."),
  Video(
      img: "https://picsum.photos/id/111/200/300",
      title: "My Intro Video,Some Title 5",
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
