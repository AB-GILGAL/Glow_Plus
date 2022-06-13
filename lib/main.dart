import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:glowplus/screens/expert.dart';
import 'package:glowplus/screens/home.dart';
import 'package:glowplus/screens/loginview.dart';
import 'package:glowplus/screens/producDetail.dart';
import 'package:glowplus/screens/profile.dart';
import 'package:glowplus/screens/register.dart';
import 'package:glowplus/screens/trackOrder.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SignInPage(),
      // home: HomePage(),
      //  home: ExpertProfile(),
      //  home: Profile(),
      //  home: ProductDetail(),
      //  home: LoginView(),
        // home: TrackOrder(),
    );
  }
}
