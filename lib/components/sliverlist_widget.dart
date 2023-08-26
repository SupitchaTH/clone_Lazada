import 'package:clone_lazada/components/cardview_widget.dart';
import 'package:clone_lazada/components/icongrid_widget.dart';
import 'package:flutter/material.dart';

class SliverlistWidget extends StatelessWidget {
  const SliverlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Center(
            child: CardviewWidget(),
          ),
          Container(
            height: 200,
            color: Colors.white,
            child: IconGridWidget(),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
