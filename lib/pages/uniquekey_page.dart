import 'package:flutter/material.dart';
import 'package:ngdemo8/widgets/get_emoji.dart';

class UniqueKeyPage extends StatefulWidget {
  const UniqueKeyPage({super.key});

  @override
  State<UniqueKeyPage> createState() => _UniqueKeyPageState();
}

class _UniqueKeyPageState extends State<UniqueKeyPage> {
  List<Widget> emoji = [
    GetEmoji(key: UniqueKey(), emoji: '😎'),
    GetEmoji(key: UniqueKey(), emoji: '🤠'),
  ];

  swapEmoji(){
    print(UniqueKey());
    setState((){
      emoji.insert(1, emoji.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Unique Key"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: emoji,
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            color:Colors.blue,
            child:Text("Swap"),
            onPressed: swapEmoji,
          ),
        ],
      ),
    );
  }
}
