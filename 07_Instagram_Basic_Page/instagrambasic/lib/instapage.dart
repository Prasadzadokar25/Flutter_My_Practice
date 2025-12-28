import "package:flutter/material.dart";

class Instapage extends StatefulWidget {
  const Instapage({super.key});

  @override
  State<Instapage> createState() => _InstapageState();
}

class _InstapageState extends State<Instapage> {
  int? likeCount = 0;
  int? commentCount = 0;
  bool likepost1 = false;
  bool likepost2 = false;
  bool likepost3 = false;
  bool likepost4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
                  width: double.infinity,
                  // height: 250,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            likeCount = likeCount! + 1;
                            likepost1 = !likepost1;
                          },
                        );
                      },
                      icon: Icon(
                        likepost1
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: likepost1 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(
                            () {
                              likepost1 = !likepost1;
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.comment,
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                  width: double.infinity,
                  //height: 250,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(
                            () {
                              likeCount = likeCount! + 1;
                              likepost2 = !likepost2;
                            },
                          );
                        },
                        icon: Icon(
                          likepost2
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: likepost2 ? Colors.red : Colors.black,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1517329782449-810562a4ec2f?q=80&w=2063&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  width: double.infinity,
                  //height: 250,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            likeCount = likeCount! + 1;
                            likepost3 = !likepost3;
                          },
                        );
                      },
                      icon: Icon(
                        likepost3
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: likepost3 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
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
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",
                  width: double.infinity,
                  //height: 250,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            likeCount = likeCount! + 1;
                            likepost4 = !likepost4;
                          },
                        );
                      },
                      icon: Icon(
                        likepost4
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: likepost4 ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
