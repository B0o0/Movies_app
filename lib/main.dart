import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/style/theme.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/HomeLayout/HomeLayout.dart';
import 'package:movies_app/Services/Provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => AppProvider(),
      child: const MyApp(),
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.defaultTheme,
      routes: {
        HomeLayout.routeName: (BuildContext context) => HomeLayout(),
        // DetailsScreen.routeName: (BuildContext context) => DetailsScreen(),
      },
      initialRoute: HomeLayout.routeName,
    );
  }
}
