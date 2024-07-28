import 'package:flutter/material.dart';

import 'details_page.dart';

class LifecyclePage extends StatefulWidget {
  const LifecyclePage({super.key});

  @override
  State<LifecyclePage> createState() => _LifecyclePageState();
}

class _LifecyclePageState extends State<LifecyclePage> {

  _openDetails()async{
    Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
      return DetailsPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Widget Lifecycle"),
      ),
      body: Center(
        child:MaterialButton(
          onPressed:(){
           _openDetails();
          },
          child: Text("Open"),
          color: Colors.blue,
        ),
      ),
    );
  }


}
