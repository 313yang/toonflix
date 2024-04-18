import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    super.key,
    required this.thumb,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            thumb: thumb,
            title: title,
            id: id,
          ),
          fullscreenDialog: true,
        ),
      ),
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(
                        1,
                        2,
                      ),
                      color: Colors.black26,
                    )
                  ]),
              child: Image.network(
                thumb,
                headers: const {
                  'Referer': 'https://comic.naver.com',
                },
                width: 240,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
