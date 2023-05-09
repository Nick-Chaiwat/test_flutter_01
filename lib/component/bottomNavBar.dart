import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function onTapped;

  const BottomNavBar(this.currentIndex, this.onTapped, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          constraints: const BoxConstraints(maxHeight: 70),
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Expanded(
                  child: option(
                      () => onTapped(0),
                      Icon(
                        Icons.home,
                        color: currentIndex == 0
                            ? Color(0xFF2F00F2)
                            : Colors.black12,
                        size: 24.0,
                      ),
                      currentIndex == 0)),
              Expanded(
                  child: option(
                      () => onTapped(1),
                      Icon(
                        Icons.person,
                        color: currentIndex == 1
                            ? Color(0xFF2F00F2)
                            : Colors.black12,
                        size: 24.0,
                      ),
                      currentIndex == 1)),
              Expanded(
                  child: option(
                      () => onTapped(10),
                      const Icon(
                        Icons.video_camera_back,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      currentIndex == currentIndex,
                      cam: true)),
              Expanded(
                  child: option(
                      () => onTapped(2),
                      Icon(
                        Icons.calendar_month,
                        color: currentIndex == 2
                            ? Color(0xFF2F00F2)
                            : Colors.black12,
                        size: 24.0,
                      ),
                      currentIndex == 2)),
              Expanded(
                  child: option(
                      () => onTapped(3),
                      Icon(
                        Icons.menu_open,
                        color: currentIndex == 3
                            ? Color(0xFF2F00F2)
                            : Colors.black12,
                        size: 24.0,
                      ),
                      currentIndex == 3)),
            ],
          )),
    );
  }
}

Widget option(onTap, Icon icon, bool active, {bool cam = false}) {
  return InkWell(
    onTap: () => {onTap()},
    child: Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
                width: active && !cam ? 40 : 0,
                decoration: const BoxDecoration(
                    color: Color(0xFF2F00F2),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(40, 50))))),
        Expanded(
            flex: 13,
            child: Container(
              alignment: Alignment.center,
              child: cam
                  ? Container(
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xFF2F00F2),
                      ),
                      child: icon,
                    )
                  : Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                        color: active ? Colors.black12 : Colors.white,
                      ),
                      child: icon,
                    ),
            ))
      ],
    ),
  );
}
