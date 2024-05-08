import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/const/constant.dart';
import 'package:responsive_dashboard/provider/side_menu_widget_provider.dart';
import 'package:responsive_dashboard/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SideMenuProvider(),
      child: ScreenUtilInit(
        child: MaterialApp(
          title: 'Dashboared UI',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            brightness: Brightness.dark
          ),
          home: const MainScreen(),
        ),
      ),
    );
  }
}

