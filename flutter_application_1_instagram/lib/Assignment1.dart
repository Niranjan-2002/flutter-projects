import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State<StatefulWidget> createState() => _Assignment1State();
}

class _Assignment1State extends State {
  bool liked1 = false;
  bool liked2 = false;
  bool liked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CricStick",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 30)),
        backgroundColor: Colors.cyan,
        actions: const [
          Icon(
            Icons.message_sharp,
            color: Colors.black,
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.all(5),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //height: MediaQuery.of(context).size.height * 0.7,
              //width: MediaQuery.of(context).size.width * 0.9,
              width: double.infinity,
              height: 2,
              // Below is the code for Linear Gradient.
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 21,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/rohit.jpg'),
                        radius: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text("rohitsharma45", style: TextStyle(fontSize: 15)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ]),
                ),
                Container(
                  // color: Colors.amber,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxUO-GwokndX5xQg96jlTJl1x7grDsrCTjjQ&usqp=CAU",
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            liked1 = !liked1;
                          });
                        },
                        icon: liked1
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline_outlined,
                                color: Colors.black,
                              )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.bookmark)),
                  ],
                ),
                const Text("34,055 Liked"),
                const Text("View all 37,500 Comment..."),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueGrey,
                  padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 21,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/virat.webp'),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 15,
                      child: const Text(
                        "virat.kohli",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ]),
                ),
                Container(
                  // color: Colors.amber,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPZ2_QJeeaXvH39lTvSPu969jmA7BIAth1qw&usqp=CAU",
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            liked2 = !liked2;
                          });
                        },
                        icon: liked2
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline_outlined,
                                color: Colors.black,
                              )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_outline_outlined)),
                  ],
                ),
                const Text("38,125 Liked"),
                const Text("View all 33,233 Comment..."),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 21,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/yuvraj.jfif'),
                        radius: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 18,
                      child: const Text(
                        "yuvrajsingh",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ]),
                ),
                Container(
                  // color: Colors.amber,
                  child: Image.network(
                    "data:image/jpeg;base64,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",
                    width: double.infinity,
                    height: 300,
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            liked3 = !liked3;
                          });
                        },
                        icon: liked3
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline_outlined,
                                color: Colors.black,
                              )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_outline_outlined)),
                  ],
                ),
                const Text("27,125 Liked"),
                const Text("View all 15,663 Comment..."),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 205, 190, 190),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              //backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ]),

// body: ListView(
    );
  }
}