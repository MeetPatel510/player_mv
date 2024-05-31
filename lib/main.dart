import 'package:flutter/material.dart';
import 'package:player_mv/Controllers/Audio_Provider.dart';
import 'package:player_mv/Controllers/BottomNavigation_provider.dart';
import 'package:player_mv/Controllers/VideoPlayer_Provider.dart';
import 'package:player_mv/View/Screens/HomePage.dart';
import 'package:player_mv/View/Screens/OpenMusicPage.dart';
import 'package:player_mv/View/Screens/SplachScreen.dart';
import 'package:player_mv/View/Screens/VideoPlayPage.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoPlayer_Provider()),
        ChangeNotifierProvider(
            create: (context) => BottomNavigation_provider()),
        ChangeNotifierProvider(create: (context) => Audio_Provider()),
      ],
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => SplachScreen(),
          "HomePage": (context) => HomePage(),
          "VideoPlayPage": (context) => VideoPlayPage(),
          "OpenMusicPage": (context) => OpenMusicPage(),
        },
      ),
    ),
  );
}
