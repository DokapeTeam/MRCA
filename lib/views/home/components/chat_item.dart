import 'dart:math';

import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final VoidCallback? onClick;
  final String avatar;
  final String userName;
  final String lastMessage;

  const ChatItem(
      {Key? key,
      this.onClick,
      required this.avatar,
      required this.userName,
      required this.lastMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                SizedBox(
                  width: 48,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(avatar),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        lastMessage,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  DateTime.now().hour.toString() + ':' + DateTime.now().minute.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Random().nextBool()
                    ? Container(
                        width: 40.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        alignment: Alignment.center,
                      )
                    : const Text(""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
