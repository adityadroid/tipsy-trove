import 'package:flutter/material.dart';
import 'package:tipsy_trove/drink_category/drink_category.dart';
import 'package:tipsy_trove/gen/assets.gen.dart';
import 'package:tipsy_trove/l10n/l10n.dart';
import 'package:tipsy_trove/utils/context_extensions.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverSafeArea(
        top: false,
        bottom: false,
        sliver: SliverAppBar(
          elevation: 0,
          expandedHeight: context.height * 0.4,
          collapsedHeight: context.height * 0.15,
          pinned: true,
          backgroundColor: Colors.white,
          bottom: CustomAppBar(),
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 2,
            titlePadding: const EdgeInsets.fromLTRB(40, 0, 40, 120),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.booze.image(height: 40),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    context.l10n.appName,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SearchBar(
            hintText: context.l10n.homeSearchBarHint,
            hintStyle: MaterialStatePropertyAll(
              Theme.of(context).textTheme.bodyMedium,
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Assets.icons.search.image(height: 20, width: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TabBar(
              tabs: DrinkType.values
                  .map(
                    (drinkType) => Tab(
                      text: drinkType.title(context),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
