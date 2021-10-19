import 'package:flutter/material.dart';
import 'package:flutter_banking_app/config/palette.dart';
import 'package:flutter_banking_app/screens/home/home_screen.dart';
import 'package:flutter_banking_app/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(
    const FlutterBank(),
  );
}

class FlutterBank extends StatelessWidget {
  const FlutterBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414.0, 896.0),
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Banking App',
        theme: ThemeData(
          primarySwatch: Palette.kCustomColour,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme:
              GoogleFonts.manropeTextTheme(Theme.of(context).textTheme).copyWith(
            bodyText2: TextStyle(
              fontSize: 14.0.sp,
            ),
          ),
        ),
        initialRoute: initScreen == 0 || initScreen == null
            ? OnboardingScreen.id
            : HomeScreen.id,
        routes: {
          HomeScreen.id: (context)=> const HomeScreen(),
          OnboardingScreen.id: (context)=> const OnboardingScreen(),
        },
      ),
    );
  }
}
