import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                width: 67,
                height: 67,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.amber,
                    border: Border.all(width: 5, color: Colors.white),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/id/237/200/300"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
