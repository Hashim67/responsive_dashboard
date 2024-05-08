import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/responsive.dart';
import 'package:responsive_dashboard/widgets/dashboard_widget.dart';
import 'package:responsive_dashboard/widgets/side_menu_widget.dart';
import 'package:responsive_dashboard/widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                )),
          const Expanded(
            flex: 7,
            child: DashboardWidget(),
          ),
          if (isDesktop)
            const Expanded(
              flex: 3,
              child: SummaryWidget(),
            ),
        ],
      )),
    );
  }
}
