import 'package:flutter/material.dart';

class DynamicInstaPage extends StatefulWidget {
  const DynamicInstaPage({super.key});
  State createState() => _DynamicInstaPageState();
}

class _DynamicInstaPageState extends State {
  List images = [
    "https://e0.pxfuel.com/wallpapers/715/815/desktop-wallpaper-nature-18-1600x1000-nature.jpg",
    "https://e0.pxfuel.com/wallpapers/715/815/desktop-wallpaper-nature-18-1600x1000-nature.jpg",
    "https://e0.pxfuel.com/wallpapers/715/815/desktop-wallpaper-nature-18-1600x1000-nature.jpg",
    "https://e0.pxfuel.com/wallpapers/715/815/desktop-wallpaper-nature-18-1600x1000-nature.jpg",
    "https://e0.pxfuel.com/wallpapers/715/815/desktop-wallpaper-nature-18-1600x1000-nature.jpg",
    "https://e0.pxfuel.com/wallpapers/715/815/desktop-wallpaper-nature-18-1600x1000-nature.jpg",
  ];

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 200,
                    child: Image.network("${images[index]}"),
                    color: Colors.yellow,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_sharp,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_rounded,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                        ),
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {});
          }),
    );
  }
}
