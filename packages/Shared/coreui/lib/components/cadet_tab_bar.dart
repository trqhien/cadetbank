import 'package:coreui/values/colors.dart';
import 'package:flutter/material.dart';

class CadetTabBar extends StatefulWidget {
  const CadetTabBar({
    super.key, 
    required this.itemCount, 
    required this.tabBarTextBuilder, 
    required this.tabBarViewBuilder
  });

  final int itemCount;
  final String Function(BuildContext, int) tabBarTextBuilder;
  final Widget Function(BuildContext, int) tabBarViewBuilder;
  
  @override
  _CadetTabBarState createState() => _CadetTabBarState();
}

class _CadetTabBarState extends State<CadetTabBar> with TickerProviderStateMixin {
  late TabController _tabController;
  int? _cachedFromIdx;
  int? _cachedToIdx;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: widget.itemCount, initialIndex: 0, vsync: this);
    _tabController.addListener(() {
      // _bloc.changeTabIndex(_tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.itemCount,
      initialIndex: 0,
      child: Column(
        children: [
          // Tab bar
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12).copyWith(left: 4),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 0,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(100)),
              physics: const ClampingScrollPhysics(),
              // unselectedLabelColor: CustomColors.grey5Color,
              // labelColor: CustomColors.primaryWhiteColor,
              labelPadding: const EdgeInsets.only(left: 12),
              tabs: List.generate(widget.itemCount, (i) => i)
                .map((e) => AnimatedBuilder(
                  animation: _tabController.animation!,
                  builder: (ctx, _) {
                    final forward = _tabController.offset > 0;
                    final backward = _tabController.offset < 0;
                    int? _fromIndex;
                    int? _toIndex;
                    double _progress;

                    // This value is true during the [animateTo] animation that's triggered when the user taps a [TabBar] tab.
                    // It is false when [offset] is changing as a consequence of the user dragging the [TabBarView].
                    if (_tabController.indexIsChanging) {
                      _fromIndex = _tabController.previousIndex;
                      _toIndex = _tabController.index;
                      _cachedFromIdx = _fromIndex;
                      _cachedToIdx = _toIndex;
                      _progress =
                          (_tabController.animation!.value - _fromIndex).abs() /
                              (_toIndex - _fromIndex).abs();
                    } else {
                      if (_cachedFromIdx == _tabController.previousIndex &&
                          _cachedToIdx == _tabController.index) {
                        _fromIndex = _cachedFromIdx;
                        _toIndex = _cachedToIdx;
                        _progress = 1;
                        _cachedToIdx = null;
                        _cachedFromIdx = null;
                      } else {
                        _cachedToIdx = null;
                        _cachedFromIdx = null;
                        _fromIndex = _tabController.index;
                        _toIndex = forward
                            ? _fromIndex + 1
                            : backward
                                ? _fromIndex - 1
                                : _fromIndex;
                        _progress =
                            (_tabController.animation!.value - _fromIndex).abs();
                      }
                    }

                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      decoration: BoxDecoration(
                        color: e == _fromIndex
                          ? Color.lerp(CustomColors.primaryBlackColor, CustomColors.grey3Color, _progress)
                          : e == _toIndex
                            ? Color.lerp(CustomColors.grey3Color, CustomColors.primaryBlackColor, _progress)
                            : Color.lerp(CustomColors.grey3Color, CustomColors.grey3Color, _progress),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Text(
                        widget.tabBarTextBuilder(ctx, e),
                        style: Theme.of(context).textTheme.bodyLarge!
                          .copyWith(
                            fontWeight: FontWeight.w700,
                            color: e == _fromIndex
                              ? Color.lerp(CustomColors.primaryWhiteColor, CustomColors.grey5Color, _progress)
                              : e == _toIndex
                                ? Color.lerp(CustomColors.grey5Color, CustomColors.primaryWhiteColor, _progress)
                                : Color.lerp(CustomColors.grey5Color, CustomColors.grey5Color, _progress),
                          )
                      ),
                    );
                  },
                ))
                .toList(),
            ),
          ),

          // Tab bar view
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List.generate(widget.itemCount, (i) => i)
                .map((i) => widget.tabBarViewBuilder(context, i))
                .toList(),
            ),
          )
        ],
      )
    );
  }
}
