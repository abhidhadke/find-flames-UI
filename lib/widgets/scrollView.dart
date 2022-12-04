import 'package:flutter/material.dart';

class Scroll_View extends StatelessWidget {
  final String src;
  final String label;
  final bool like;
  const Scroll_View({Key? key, required this.src, required this.label, required this.like}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(src, fit: BoxFit.cover,height: 110,),
          ),
          Positioned.fill(
            child: Align(
              alignment: like ? Alignment.topCenter : Alignment.bottomCenter,
              child: like ? Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.favorite, color: Colors.white, size: 30,),
                    const Text("20", style: TextStyle(fontSize: 30, color: Colors.white),),
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      height: 20,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                      child: Center(child: Text(label)),
                    ),
                  ],
                ),
              ) : Container(
                width: MediaQuery.of(context).size.width*0.15,
                height: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                child: Center(child: Text(label)),
              ),
            ),
          )
        ],
      ),

    );
  }
}
