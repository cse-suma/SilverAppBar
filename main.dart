//SilverAppBar

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.teal,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Sliverappbar"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(<Widget>[

              addDetails("one", "this is one"),
              addDetails("one", "this is Twp"),
              addDetails("one", "this is Three"),
              addDetails("one", "this is four"),
              addDetails("one", "this is Five"),
              addDetails("one", "this is Six"),
              addDetails("one", "this is Seven"),
              addDetails("one", "this is Eight"),
              addDetails("one", "this is Nine"),
              addDetails("one", "this is Ten"),

            ]))
          ],
        ),
      ),
    );
  }
}
Widget addDetails(
    String name,
    String description,

    )
=> ListTile(
  title: Text(name),
  subtitle: Text(description),
  leading: CircleAvatar(
    child: Text(name[0],),
  ),
);