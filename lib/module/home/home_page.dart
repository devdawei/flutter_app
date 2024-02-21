import 'package:flutter/material.dart';
import 'package:flutter_app/app_color.dart';
import 'package:flutter_app/app_navigator.dart';
import 'package:flutter_app/module/learn/cake_info_page.dart';
import 'package:flutter_app/module/learn/diff_type_ele_list_view_page.dart';
import 'package:flutter_app/module/learn/floating_app_bar_page.dart';
import 'package:flutter_app/module/learn/grid_view_page.dart';
import 'package:flutter_app/module/learn/horizontal_list_view_page.dart';
import 'package:flutter_app/module/learn/layout_build_page.dart';
import 'package:flutter_app/module/learn/long_list_view_page.dart';
import 'package:flutter_app/module/learn/space_item_page.dart';
import 'package:flutter_app/module/learn/vertical_list_view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum PageType {
  layoutBuild,
  verticalList,
  horizontalList,
  gridView,
  diffTypeEleList,
  spaceItem,
  longList,
  floatingAppBar,
  cakeInfo,
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final items = <ItemModel>[
    ItemModel(PageType.layoutBuild, '布局构建'),
    ItemModel(PageType.verticalList, '构建与使用列表'),
    ItemModel(PageType.horizontalList, '构建一个横向列表'),
    ItemModel(PageType.gridView, '构建一个网格视图'),
    ItemModel(PageType.diffTypeEleList, '构建包含不同类型元素的列表'),
    ItemModel(PageType.spaceItem, '构建元素之间包含间隔的列表'),
    ItemModel(PageType.longList, '处理长列表'),
    ItemModel(PageType.floatingAppBar, '浮动的顶栏'),
    ItemModel(PageType.cakeInfo, '蛋糕介绍'),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        // prototypeItem: ,
        // itemExtent: ,
        itemBuilder: (context, index) {
          return ItemWidget(model: items[index]);
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.model});
  final ItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: ListTile(
              title: Text(model.title),
              onTap: () => onTap(context, model),
            ),
          ),
          Container(
            height: 1,
            color: AppColor.separator,
          ),
        ],
      ),
    );
  }

  void onTap(BuildContext context, ItemModel model) {
    print(model.type);
    switch (model.type) {
      case PageType.layoutBuild:
        AppNavigator.push(context, const LayoutBuildPage());
        break;
      case PageType.verticalList:
        AppNavigator.push(context, const VerticalListViewPage());
        break;
      case PageType.horizontalList:
        AppNavigator.push(context, const HorizontalListViewPage());
        break;
      case PageType.gridView:
        AppNavigator.push(context, const GridViewPage());
        break;
      case PageType.diffTypeEleList:
        AppNavigator.push(context, const DiffTypeEleListViewPage());
        break;
      case PageType.spaceItem:
        AppNavigator.push(context, const SpaceItemPage());
        break;
      case PageType.longList:
        AppNavigator.push(context, const LongListViewPage());
        break;
      case PageType.floatingAppBar:
        AppNavigator.push(context, const FloatingAppBarPage());
        break;
      case PageType.cakeInfo:
        AppNavigator.push(context, const CakeInfoPage());
        break;
    }
  }
}

class ItemModel {
  final PageType type;
  final String title;

  ItemModel(this.type, this.title);
}
