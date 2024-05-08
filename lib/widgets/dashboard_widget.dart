import 'package:flutter/material.dart';
import 'package:responsive_dashboard/util/responsive.dart';
import 'package:responsive_dashboard/widgets/activity_detail_card.dart';
import 'package:responsive_dashboard/widgets/bar_graph_widget.dart';
import 'package:responsive_dashboard/widgets/header_widget.dart';
import 'package:responsive_dashboard/widgets/line_chart_card.dart';
import 'package:responsive_dashboard/widgets/summary_widget.dart';



class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /// Device Hight and width find ///
    // MediaQuery.of(context).size.width;
    // String height="${MediaQuery.of(context).size.height}";

    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(height: 18),
             const BarGraphCard(),
            const SizedBox(height: 18),
            if(Responsive.isTablet(context))  const SummaryWidget()
          ],
        ),
      ),
    );
  }
}