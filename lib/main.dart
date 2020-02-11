import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static List<Tab> tabIcon = [buildMenuIcon(LineAwesomeIcons.home), buildMenuIcon(Icons.people_outline), buildMenuIcon(Icons.ondemand_video), buildMenuIcon(LineAwesomeIcons.user), buildMenuIcon(Icons.notifications_none), buildMenuIcon(Icons.menu)];

  static Widget buildMenuIcon(IconData iconName){
    return Tab(
            icon: Icon(iconName),
          );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      home: SafeArea(
        child: CustomScrollView(slivers: <Widget>[
          DefaultTabController(length: tabIcon.length,

        child: Scaffold(
          appBar: AppBar(
            title: Text("FACEBOOK", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,),
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.message),
          ],
          bottom: TabBar(tabs: tabIcon),
          ),
          body: Column(
            children: <Widget>[
              // Container(
              //   child: Row(
              //     children: <Widget>[
              //       Padding(
              //         padding: const EdgeInsets.only(right: 15.0),
              //         child: Icon(
              //           LineAwesomeIcons.home,
              //           size: 45.0,
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(right: 15.0),
              //         child: Icon(
              //           Icons.people_outline,
              //           size: 45.0,
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(right: 15.0),
              //         child: Icon(
              //           Icons.ondemand_video,
              //           size: 45.0,
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(right: 15.0),
              //         child: Icon(
              //           LineAwesomeIcons.user,
              //           size: 45.0,
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(right: 15.0),
              //         child: Icon(
              //           Icons.notifications_none,
              //           size: 45.0,
              //         ),
              //       ),
              //       Icon(
              //         Icons.menu,
              //         size: 45.0,
              //       ),
              //     ],
              //   ),
              // ),
              Divider(
                color: Colors.black,
              ),
              Container(
                height: 50.0,
                padding: EdgeInsets.only(left: 3.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/pp.jpg"),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15.0),
                      width: 235.0,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          hintText: "What's on your mind?",
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: ListView(
                        children: <Widget>[
                          Icon(
                            Icons.photo_library,
                            size: 30.0,
                          ),
                          Text(
                            "Photo",
                            style: TextStyle(fontSize: 15.0),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[400],
                thickness: 7.0,
              ),
              Expanded(
                child: Container(
                  height: 200.0,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 180.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var index = 1;
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 4.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/pp.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                      Colors.black26,
                                      BlendMode.darken,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: FloatingActionButton(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.blue,
                                        ),
                                        backgroundColor: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Sabin Nakarmi",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Divider(
                        color: Colors.grey[400],
                        thickness: 7.0,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage("images/pp.jpg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 8.0, 0.0, 0.0),
                                child: Container(
                                  height: 50.0,
                                  width: 150.0,
                                  child: ListView(
                                    children: <Widget>[
                                      Text(
                                        "Sabin Nakarmi",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Yesterday",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[600],
                                        ),
//                                      textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 360,
                        width: 360,
                        child: Row(
                          children: <Widget>[
                            Image.asset("images/pp.jpg"),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up,
                              color: Colors.blue,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("500"),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: Icon(
                                LineAwesomeIcons.thumbs_o_up,
                                color: Colors.grey[600],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Like",
                                style: TextStyle(color: Colors.grey[600]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: Icon(
                                LineAwesomeIcons.comment_o,
                                color: Colors.grey[600],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Comment",
                                style: TextStyle(color: Colors.grey[600]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: Icon(
                                Icons.share,
                                color: Colors.grey[600],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Share",
                                style: TextStyle(color: Colors.grey[600]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
  ]
  ),
  ),
  );
  }
}
