import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final List<String> images = [
    "2024-02-23_19-38-19_2064.png",
    "2024-02-23_19-28-25_2374.png",
    "2024-02-23_19-35-28_2417.png",
    "2024-02-23_19-25-24_3154.png",
    "2024-02-23_19-28-55_7189.png",
    "2024-02-23_19-32-20_9827.png",
    "2024-02-23_19-32-05_6512.png",
    "2024-02-23_19-30-26_8378.png",
    "2024-02-23_19-18-05_3156.png",
    "2024-02-23_19-26-15_8022.png",
    "2024-02-23_19-20-55_9443.png",
    "2024-02-23_19-34-59_3320.png",
    "2024-02-23_19-19-24_2538.png",
    "2024-02-23_19-22-20_6801.png",
    "2024-02-23_19-17-36_8202.png",
    "2024-02-23_19-29-56_5954.png",
    "2024-02-23_19-23-42_7110.png",
    "2024-02-23_19-19-54_8795.png",
    "2024-02-23_19-24-55_5564.png",
    "2024-02-23_19-31-23_3358.png",
    "2024-02-23_19-33-43_9398.png",
    "2024-02-23_19-31-39_3851.png",
    "2024-02-23_19-34-13_1444.png",
    "2024-02-23_19-24-10_4033.png",
    "2024-02-23_19-32-41_6841.png",
    "2024-02-23_19-22-49_8352.png",
    "2024-02-23_19-37-50_9482.png",
    "2024-02-23_19-21-25_8891.png",
    "2024-02-23_19-26-44_5726.png"
  ];

  var current_index = 0;

  int get list_length {
    return this.images.length;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          debugPrint('list length : ${list_length}');
          debugPrint(' current  : ${current_index}');

          //! increment and recycle :
          if (current_index == 0) {
            current_index++;
          } else if (current_index % (list_length - 1) == 0) {
            current_index = 0;
          } else {
            current_index++;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/${images[current_index]}',
            ),
          ),
        ),
      ),
    );
  }
}
