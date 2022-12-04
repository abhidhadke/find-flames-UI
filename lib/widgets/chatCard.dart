import 'package:find_flames_ui/widgets/themes.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  final String src;
  final String label;
  final String chat;
  final bool isTyping;
  final bool isVerified;
  final bool isRead;
  final String? message;
  const Chat({Key? key, required this.src, required this.label, required this.chat, required this.isTyping, required this.isVerified, required this.isRead,this.message}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(widget.src),
            radius: 27,
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(widget.label, style: widget.isRead ? readTextStyle : unreadTextStyle,),
                  const SizedBox(width: 5,),
                  widget.isVerified ? const Icon(Icons.verified, color: Colors.blue,) : Container(),
                  widget.isVerified ? const SizedBox(width: 175,) : const SizedBox(width: 200,),
                  const Text('13:10', textAlign: TextAlign.right),
                ],
              ),
              Row(
                children: [
                  widget.isTyping ? Text('Typing', style: typingTextStyle,) : Text(widget.chat, style: widget.isRead ? subReadTextStyle : subUnreadTextStyle,),
                  widget.isTyping? const SizedBox(width: 220,) : const SizedBox(width: 250,),
                  widget.isRead ? Container() : Container(height: 22,width: 24,decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFF5F8F),), child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(child: Text(widget.message!)),
                  ),
                  ),
                ],
              )


            ],
          )
        ],
      ),
    );
  }
}
