import 'package:flutter/material.dart';

class MessageView extends StatefulWidget {
  final String name;
  final String image;
  final String status;

  const MessageView({
    super.key,
    required this.name,
    required this.image,
    required this.status,
  });

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  final List<Map> chatDetails = [
    {"message": "Hey, good morning!", "time": "09:00 AM", "is_me": true},
    {
      "message": "Morning! How’s everything going?",
      "time": "09:01 AM",
      "is_me": false,
    },
    {
      "message": "Pretty good, just finishing up a project.",
      "time": "09:02 AM",
      "is_me": true,
    },
    {
      "message": "Nice! Is it the Flutter app you mentioned?",
      "time": "09:03 AM",
      "is_me": false,
    },
    {
      "message": "Yeah, that one. Finally got the UI working properly.",
      "time": "09:05 AM",
      "is_me": true,
    },
    {
      "message": "Awesome! You always make clean designs.",
      "time": "09:06 AM",
      "is_me": false,
    },
    {
      "message":
          "Haha thanks 😄 Still need to fix the state management though.",
      "time": "09:07 AM",
      "is_me": true,
    },
    {
      "message": "Are you using Riverpod or Provider this time?",
      "time": "09:09 AM",
      "is_me": false,
    },
    {
      "message": "Trying out Riverpod — feels more structured.",
      "time": "09:10 AM",
      "is_me": true,
    },
    {
      "message": "Good choice. It scales better for complex apps.",
      "time": "09:11 AM",
      "is_me": false,
    },
    {
      "message": "Exactly. By the way, did you check the new API docs?",
      "time": "09:12 AM",
      "is_me": true,
    },
    {
      "message": "Not yet, are there major changes?",
      "time": "09:13 AM",
      "is_me": false,
    },
    {
      "message": "Some endpoints are deprecated. I’ll share the updated link.",
      "time": "09:14 AM",
      "is_me": true,
    },
    {
      "message": "Perfect. That’ll save me some debugging later.",
      "time": "09:15 AM",
      "is_me": false,
    },
    {
      "message": "Also, we should review the authentication flow today.",
      "time": "09:17 AM",
      "is_me": true,
    },
    {
      "message": "Sure, I’m free after 2 PM. Works?",
      "time": "09:18 AM",
      "is_me": false,
    },
    {
      "message": "Yep, 2 PM is perfect. Let’s meet on Zoom.",
      "time": "09:19 AM",
      "is_me": true,
    },
    {
      "message": "Cool. I’ll send the link before the call.",
      "time": "09:20 AM",
      "is_me": false,
    },
    {
      "message": "Thanks! Let’s get this done today 💪",
      "time": "09:21 AM",
      "is_me": true,
    },
    {
      "message": "You got it! See you at 2.",
      "time": "09:22 AM",
      "is_me": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075e55),
        leadingWidth: 38,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.white70),
        ),
        title: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(widget.image)),
          title: Text(
            widget.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            widget.status,
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
          contentPadding: EdgeInsets.zero,
        ),
        actions: [
          InkWell(
            onTap: () {},
            splashColor: const Color.fromARGB(10, 0, 0, 0),
            child: Icon(Icons.videocam, color: Colors.white),
          ),
          SizedBox(width: 16),
          InkWell(
            onTap: () {},
            splashColor: const Color.fromARGB(10, 0, 0, 0),
            child: Icon(Icons.phone, color: Colors.white),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {},
            splashColor: const Color.fromARGB(10, 0, 0, 0),
            child: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatDetails.length,
              itemBuilder: (context, index) {
                final maxWidth = MediaQuery.of(context).size.width * 0.75;
                final message = chatDetails[index]['message'];
                final time = chatDetails[index]['time'];
                final isMe = chatDetails[index]['is_me'];

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Align(
                    alignment: isMe ? Alignment.topRight : Alignment.topLeft,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxWidth),
                      child: Column(
                        crossAxisAlignment: isMe
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: isMe ? Color(0xFFDCF8C6) : Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(isMe ? 12 : 0),
                                bottomRight: Radius.circular(isMe ? 0 : 12),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1,
                                  offset: Offset(0.5, 1),
                                ),
                              ],
                            ),
                            child: Text(
                              message,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  time,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                ),
                                if (isMe) SizedBox(width: 6),
                                if (isMe)
                                  Icon(
                                    Icons.done_all,
                                    size: 16,
                                    color: Colors.blueAccent,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    // height: 48,
                    constraints: BoxConstraints(minHeight: 48),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(25, 0, 0, 0),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Center(
                      child: TextField(
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hint: Align(
                            alignment: AlignmentGeometry.centerLeft,
                            child: Text("Enter your message"),
                          ),
                          prefixIcon: Icon(Icons.emoji_emotions_outlined),
                          suffixIcon: Icon(Icons.attach_file),
                          isDense: true,
                          prefixIconConstraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 36,
                          ),
                          suffixIconConstraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 36,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Color(0xFF075e55),
                  radius: 20,
                  child: Icon(Icons.send, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
