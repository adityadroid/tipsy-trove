import 'package:flutter/material.dart';
import 'package:tipsy_trove/gen/assets.gen.dart';
import 'package:tipsy_trove/utils/context_extensions.dart';

class LoadingDrinkWidget extends StatefulWidget {
  const LoadingDrinkWidget({super.key});

  @override
  State<LoadingDrinkWidget> createState() => _LoadingDrinkWidgetState();
}

class _LoadingDrinkWidgetState extends State<LoadingDrinkWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat();
    _animation = IntTween(begin: 1, end: 3).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  String getDots() {
    switch (_animation.value) {
      case 1:
        return '.  ';
      case 2:
        return '.. ';
      case 3:
        return '...';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.icons.booze.path,
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Pouring a drink for you',
                      style: context.textTheme.titleMedium,
                    ),
                    Text(
                      getDots(),
                      style: context.textTheme.titleMedium,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
