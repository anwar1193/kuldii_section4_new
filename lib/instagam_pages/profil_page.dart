import 'package:flutter/material.dart';
import './../instagram_widgets/profile_pictures.dart';
import '../instagram_widgets/info_item.dart';
import '../instagram_widgets/tab_item.dart';
import '../instagram_widgets/story_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, // menghilangkan garis appbar (supaya menyatu dengan body)
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("My Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "980"),
                      InfoItem("Followers", "1250"),
                      InfoItem("Following", "520"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Anwar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
                // Untuk membuat text dengan berbagai style
                text: TextSpan(
                    text:
                        "Satu satu aku sayang ibu, dua dua juga sayang ayah, tiga tiga sayang adik kakak, satu dua tiga ",
                    style: TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: "#SayangSemuanya",
                      style: TextStyle(color: Colors.blue))
                ])),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
                // Untuk membuat text dengan berbagai style
                text: TextSpan(
                    text: "Link goes here",
                    style: TextStyle(color: Colors.blue))),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black),
                  ))),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Story 1"),
                  StoryItem("Story 2"),
                  StoryItem("Story 3"),
                  StoryItem("Story 4"),
                  StoryItem("Story 5"),
                  StoryItem("Story 6"),
                  StoryItem("Story 7")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TabItem(true, Icons.grid_on_outlined),
              TabItem(false, Icons.person_pin_outlined),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          GridView.builder(
            itemCount: 50,
            shrinkWrap:
                true, // supaya tidak error walaupun gridview ada di dalam listview
            physics:
                NeverScrollableScrollPhysics(), // supaya tidak error walaupun gridview ada di dalam listview
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_filter_rounded), label: "Movie"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
