import 'package:env_flavor/app_helper.dart';
import 'package:env_flavor/repo/http_repo.dart';
import 'package:flutter/material.dart';

class SampleSection extends StatefulWidget {
  @override
  State<SampleSection> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SampleSection> {
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
    return Column(
      children: [
        Text(
          AppHelper.baseUrl,
        ),
        Expanded(
          child: Text(
            data,
          ),
        ),
      ],
    );
  }
}
