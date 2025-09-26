import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name:"NewTestPage")
class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
