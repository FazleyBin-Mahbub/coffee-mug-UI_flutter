import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  @override
  _ConditionState createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 101,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      color: index.isEven ? Colors.red : Colors.greenAccent,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
