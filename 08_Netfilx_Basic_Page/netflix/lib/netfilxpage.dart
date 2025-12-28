import 'package:flutter/material.dart';

class Netfix extends StatelessWidget {
  const Netfix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Netflix"),
        backgroundColor: Colors.red,
      ),

      drawer: Drawer(
        width: 230,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
      //bottomNavigationBar:
      // NavigationBar(destinations: [Icons.format_overline_outlined]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  Movies",
              style: TextStyle(
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 350,
                      width: 15,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      height: 350,
                    ),
                    const SizedBox(
                      height: 350,
                      width: 15,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      height: 350,
                    ),
                    const SizedBox(
                      height: 350,
                      width: 15,
                    ),
                    Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                      height: 350,
                    ),
                    const SizedBox(
                      height: 350,
                      width: 15,
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  WebSeries",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      height: 200,
                      // width: 150,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  MostPopular",
              style: TextStyle(
                // fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                    Image.network(
                      "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                      height: 200,
                    ),
                    const SizedBox(
                      height: 200,
                      width: 10,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
