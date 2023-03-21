import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  DateTime date = DateTime.now();

  changeLocale() async {
    await Jiffy.setLocale("ar");
  }

  @override
  void initState() {
    changeLocale();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Center(
      // child: ElevatedButton(
      //   child: Text('Show'),
      //   onPressed: () {
      //     print(Jiffy.parse("$date").EEEE);
      //     print(Jiffy.parse("$date").fromNow());
      //     // print(Jiffy.parse("$date").EEEE.);
      //   },
      // ),

      child: Text("Web Developer", style: TextStyle(fontFamily: "Sono"),),
    );
  }
}
