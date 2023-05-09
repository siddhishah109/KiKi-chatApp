import 'package:flutter/material.dart';
import 'package:kiki/Screens/Call.dart';
import 'package:kiki/Screens/ChatPage.dart';
import 'package:kiki/Screens/CommunityPage.dart';
import 'package:kiki/Screens/Status.dart';
import 'package:kiki/popup_menu/settings.dart';
import 'package:kiki/theme/theme_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blueGrey,
              foregroundColor: const Color.fromARGB(255, 12, 12, 12),
              leading: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/PersonalProfilt");
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person_pin_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ),
              title: Text("KiKi"),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
                PopupMenuButton<int>(
                  onSelected: (items) => handleClick(items),
                  itemBuilder: (context) => [
                    const PopupMenuItem<int>(
                        value: 0, child: Text('New Group')),
                    const PopupMenuItem<int>(
                        value: 1, child: Text('New broadcast')),
                    const PopupMenuItem<int>(
                        value: 2, child: Text('Link devices')),
                    const PopupMenuItem<int>(
                        value: 3, child: Text('Starred messages ')),
                    const PopupMenuItem<int>(
                        value: 4, child: Text('Payments ')),
                    const PopupMenuItem<int>(
                        value: 5, child: Text('Settings ')),
                  ],
                )
              ],
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                labelColor: Colors.black,
                automaticIndicatorColorAdjustment: true,
                unselectedLabelColor: Color.fromARGB(255, 168, 166, 166),
                tabs: const <Tab>[
                  Tab(
                    icon: Icon(Icons.people_alt_outlined),
                  ),
                  Tab(text: "Chats"),
                  Tab(text: "Status"),
                  Tab(text: "Calls"),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            CommunityPage(),
            ChatPage(),
            StatusPage(),
            CallPage()
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  void handleClick(int items) {
    switch (items) {
      case 0:
        break;
      case 1:
        break;
      case 3:
        break;
      case 4:
        break;
      case 5:
        Navigator.pushNamed(context, '/SettingPage');
        break;
    }
  }
}
