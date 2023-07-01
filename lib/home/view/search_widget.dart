import 'package:flutter/material.dart';
import 'package:tipsy_trove/gen/assets.gen.dart';
import 'package:tipsy_trove/l10n/l10n.dart';
import 'package:tipsy_trove/utils/context_extensions.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      expandedHeight: context.height * 0.3,
      pinned: true,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.icons.booze.image(height: 100),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  context.l10n.appName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SearchBar(
                hintText: context.l10n.homeSearchBarHint,
                hintStyle: MaterialStatePropertyAll(Theme.of(context).textTheme
                    .bodyMedium,),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Assets.icons.search.image(height: 20, width: 20),
                ),
              ),
            ],
          ),
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
