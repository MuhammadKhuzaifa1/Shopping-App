import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:netshop/view/Splash_screen/SplashScreen.dart';
import 'constants/App_style/AppColors.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.bottom]);
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  FirebaseAuth auth = FirebaseAuth.instance;
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Shopping App",
        color: AppColors.orange,
        theme: ThemeData(primaryColor: AppColors.indigo,useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home:  SplashScreen(),

    );

  }

}

