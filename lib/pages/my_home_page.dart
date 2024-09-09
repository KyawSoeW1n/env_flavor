import 'package:env_flavor/repo/http_repo.dart';
import 'package:flutter/material.dart';

import '../flavors.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final httpRepo = HttpRepoImpl();
  String data = "Empty";

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() {
    httpRepo.fetchData().then((value) {
      setState(() {
        data = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Hello ${F.title}',
            ),
            ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: Text("Refresh"),
            ),
            Expanded(
              child: Text(
                data,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
