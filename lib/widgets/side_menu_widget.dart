import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/const/constant.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';
import 'package:responsive_dashboard/provider/side_menu_widget_provider.dart';

class SideMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SideMenuProvider>(
      builder: (context, sideMenuProvider, child) {
        final data = SideMenuData();
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: ListView.builder(
            itemCount: data.menu.length,
            itemBuilder: (context, index) => buildMenuEntry(
              context,
              data,
              index,
              sideMenuProvider.isSelected(index),
            ),
          ),
        );
      },
    );
  }

  Widget buildMenuEntry(
    BuildContext context,
    SideMenuData data,
    int index,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: isSelected ? selectionColor : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: InkWell(
        onTap: () {
          Provider.of<SideMenuProvider>(context, listen: false).selectedIndex =
              index;
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
