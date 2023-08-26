import 'package:clone_lazada/components/appbar_widget.dart';
import 'package:clone_lazada/components/sliverlist_widget.dart';
import 'package:clone_lazada/pages/homepage/home_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomepageController controller;
  @override
  void initState() {
    controller = HomepageController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomepageController>(
      create: (context) => controller,
      child: Consumer(
        builder: (context, con, child) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                AppbarWidget(),
                SliverlistWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
