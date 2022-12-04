import 'package:flutter/material.dart';
import 'package:find_flames_ui/widgets/scrollView.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/chatCard.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 15,),
            _scrollView(),
            const SizedBox(height: 15,),
            _search(),
            const SizedBox(height: 15,),
            _chat(),
          ],
        ),
      ),
    );
  }


  _appBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Row(
        children: const [
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/appbar/leading.png'),
            radius: 22,
          ),
        ],
      ),
      actions: [
        GestureDetector(
          child: Image.asset("assets/appbar/Vector.png"),
        ),
        const SizedBox(width: 10,)
      ],
      title: const Text("Puzzels",
      style: TextStyle(color: Color(0xFFFF5F8F), fontSize: 25),
      ),
      centerTitle: true,
    );
  }
  _scrollView(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Scroll_View(src: "assets/scrollView/likes.png", label: 'Likes', like: true,),
          Scroll_View(src: "assets/scrollView/Tony.png", label: 'Tony', like: false,),
          Scroll_View(src: "assets/scrollView/James.png", label: 'James', like: false,),
          Scroll_View(src: "assets/scrollView/Jordan.png", label: 'Jordan', like: false,)

        ],
      ),
    );
  }
  _search(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: const [BoxShadow(
            color: Colors.black26,
            blurRadius: 1,
            spreadRadius: 1
          )]
        ),
        child: TextField(
          onChanged: (value) { },
          controller: editingController,
          decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              prefixIcon: SvgPicture.asset('assets/search/Vector.svg', fit: BoxFit.scaleDown),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)))),
        ),
      ),
    );
  }
  _chat(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: const <Widget>[
          Chat(src: 'assets/chat/Jordan.png',
            label: 'Jordan',
            chat: 'Hii!',
            isTyping: false,
            isVerified: true,
            isRead: false,
            message: '1',),
          SizedBox(height: 14,),
          Chat(src: 'assets/chat/Tim.png',
              label: 'Tim',
              chat: 'Hii!',
              isTyping: false,
              isVerified: true,
              isRead: true),
          SizedBox(height: 14,),
          Chat(src: 'assets/chat/James.png',
            label: 'James',
            chat: 'Hi!!',
            isTyping: true,
            isVerified: false,
            isRead: false,
            message: '9+',),
          SizedBox(height: 14,),
        ]
      ),
    );
  }
}
