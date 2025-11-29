import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/message_view.dart';
import 'package:whatsapp_clone/views/settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map> chatData = [
    {
      "name": "Saimur Rahman",
      "image": "https://i.pravatar.cc/150?img=12",
      "message": "Please review the latest code update.",
      "time": "12:15 AM",
      "unread": 2,
      "status": "online",
    },
    {
      "name": "Farhana Ali",
      "image": "https://i.pravatar.cc/150?img=47",
      "message": "Meeting has been moved to 3 PM.",
      "time": "11:48 PM",
      "unread": 0,
      "status": "online",
    },
    {
      "name": "Rafiul Hasan",
      "image": "https://i.pravatar.cc/150?img=15",
      "message": "Let’s finalize the design by tonight.",
      "time": "10:22 PM",
      "unread": 4,
      "status": "last seen 10:45 PM",
    },
    {
      "name": "Mithila Noor",
      "image": "https://i.pravatar.cc/150?img=49",
      "message": "Client feedback received. Check the doc.",
      "time": "09:15 PM",
      "unread": 1,
      "status": "last seen 09:28 PM",
    },
    {
      "name": "Tawsif Ahmed",
      "image": "https://i.pravatar.cc/150?img=11",
      "message": "Server deployment successful.",
      "time": "07:59 PM",
      "unread": 0,
      "status": "last seen 08:10 PM",
    },
    {
      "name": "Nabila Karim",
      "image": "https://i.pravatar.cc/150?img=45",
      "message": "I’ve attached the updated proposal draft.",
      "time": "05:40 PM",
      "unread": 3,
      "status": "last seen 06:05 PM",
    },
    {
      "name": "Shafin Chowdhury",
      "image": "https://i.pravatar.cc/150?img=17",
      "message": "Budget report is ready for review.",
      "time": "03:18 PM",
      "unread": 0,
      "status": "last seen 03:35 PM",
    },
    {
      "name": "Priya Das",
      "image": "https://i.pravatar.cc/150?img=19",
      "message": "We’ll need a follow-up meeting tomorrow.",
      "time": "01:12 PM",
      "unread": 1,
      "status": "online",
    },
    {
      "name": "Naimul Hasan",
      "image": "https://i.pravatar.cc/150?img=55",
      "message": "Please verify the database migration.",
      "time": "11:55 AM",
      "unread": 0,
      "status": "last seen 12:03 PM",
    },
    {
      "name": "Sadia Khan",
      "image": "https://i.pravatar.cc/150?img=46",
      "message": "Marketing assets are ready for launch.",
      "time": "11:20 AM",
      "unread": 2,
      "status": "last seen 11:33 AM",
    },
    {
      "name": "Rahat Hossain",
      "image": "https://i.pravatar.cc/150?img=13",
      "message": "Pushed the latest API changes to GitHub.",
      "time": "10:07 AM",
      "unread": 0,
      "status": "last seen 10:25 AM",
    },
    {
      "name": "Tasnia Rahman",
      "image": "https://i.pravatar.cc/150?img=20",
      "message": "Can we update the timeline by one week?",
      "time": "09:42 AM",
      "unread": 1,
      "status": "online",
    },
    {
      "name": "Arif Chowdhury",
      "image": "https://i.pravatar.cc/150?img=57",
      "message": "Testing phase completed successfully.",
      "time": "08:56 AM",
      "unread": 3,
      "status": "last seen 09:05 AM",
    },
    {
      "name": "Mehnaz Alam",
      "image": "https://i.pravatar.cc/150?img=54",
      "message": "Presentation slides updated with feedback.",
      "time": "08:20 AM",
      "unread": 0,
      "status": "last seen 08:33 AM",
    },
    {
      "name": "Tanvir Mahmud",
      "image": "https://i.pravatar.cc/150?img=22",
      "message": "Joining the call in 5 minutes.",
      "time": "07:43 AM",
      "unread": 0,
      "status": "last seen 07:57 AM",
    },
    {
      "name": "Faria Nawar",
      "image": "https://i.pravatar.cc/150?img=2",
      "message": "The analytics report is finalized.",
      "time": "06:58 AM",
      "unread": 5,
      "status": "last seen 07:15 AM",
    },
    {
      "name": "Rakibul Islam",
      "image": "https://i.pravatar.cc/150?img=14",
      "message": "Let’s prepare a summary before the meeting.",
      "time": "06:15 AM",
      "unread": 0,
      "status": "last seen 06:29 AM",
    },
    {
      "name": "Samiha Noor",
      "image": "https://i.pravatar.cc/150?img=58",
      "message": "Shared folder permissions have been updated.",
      "time": "05:48 AM",
      "unread": 1,
      "status": "last seen 06:02 AM",
    },
    {
      "name": "Arian Rahman",
      "image": "https://i.pravatar.cc/150?img=56",
      "message": "New feature rollout scheduled for Friday.",
      "time": "04:35 AM",
      "unread": 2,
      "status": "last seen 04:49 AM",
    },
    {
      "name": "Moumita Sultana",
      "image": "https://i.pravatar.cc/150?img=24",
      "message": "Confirmed: client meeting at 10:00 AM.",
      "time": "03:10 AM",
      "unread": 0,
      "status": "last seen 03:25 AM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075e55),
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsView(
                        name: chatData[0]['name'],
                        image: chatData[0]['image'],
                      );
                    },
                  ),
                );
              },
              child: Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white70,
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                final data = chatData[index];
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MessageView(
                            name: data['name'],
                            image: data['image'],
                            status: data['status'],
                          );
                        },
                      ),
                    );
                  },
                  minVerticalPadding: 16,
                  leading: ClipOval(
                    child: Image.network(data['image'], fit: BoxFit.cover),
                  ),
                  title: Text(
                    data['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    data['message'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        data['time'],
                        style: TextStyle(
                          color: Color(0xFF075e55),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      data['unread'] != 0
                          ? Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  data['unread'].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                );
              },
            ),
            Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                      image: DecorationImage(
                        image: NetworkImage("https://i.pravatar.cc/150?img=12"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF075e55),
          onPressed: () {},
          child: Icon(Icons.message, color: Colors.white),
        ),
      ),
    );
  }
}
