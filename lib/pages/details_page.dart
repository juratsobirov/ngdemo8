import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'widgetlifecycle_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var logger = Logger();


  @override
  void initState() {
    super.initState();
    logger.i("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.d("didChangeDependencies");
  }



  @override
  Widget build(BuildContext context) {
    logger.i("Build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Details Page"),
      ),
      body: Center(

      ),

    );
  }
  @override
  void didUpdateWidget(covariant DetailsPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    logger.d("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    logger.d("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    logger.i("dispose");
  }

}
