import 'package:example/demo_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //横轴三个子widget
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 //宽高比为1时，子widget
              ),
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(DemoRouter.dataDisplayDemo),
              child: const Text("数据展示"),
            ),
          ],
        ),
      ),
    );
  }
}