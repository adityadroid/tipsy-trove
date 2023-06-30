import 'package:flutter/material.dart';
import 'package:tipsy_trove/utils/context_extensions.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      expandedHeight: context.height * 0.6,
      pinned: true,
      backgroundColor: Colors.white,
      flexibleSpace: const FlexibleSpaceBar(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Tipsy Trove'),
              SearchBar(hintText: 'What do you wanna drink today?'),
            ],
          ),
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
