import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/pi_chart_widget.dart';
import 'package:responsive_dashboard/widgets/scheduled_widget.dart';
import 'package:responsive_dashboard/widgets/summarydetails.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
       children: [
        SizedBox(height: 20,),
        Chart(),
        Text(
              'Summary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

          SizedBox(height: 16),
          SummaryDetail(),
          SizedBox(height: 40),
          Scheduled(),

       ],
      )
    );
  }
}