import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restuarant/splash/HomePage.dart';
import 'package:restuarant/splash/loginpage.dart';
import 'package:restuarant/splash/signup.dart';
import 'package:restuarant/splash/splash_1.dart';
import 'Splash/Editprofilepage.dart';
import 'Splash/Profilepage.dart';
import 'Splash/Settingpage.dart';
import 'Splash/foodsection.dart';
import 'Splash/settings_2.dart';

main()async {
  runApp(Myapp());
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(options: FirebaseOptions(

    apiKey: "AIzaSyAf8gpy0NsaxpuhN5SX-gcSVRIpgDAWsNw",

    authDomain: "restaurant-938.firebaseapp.com",

    projectId: "restaurant-938",

    storageBucket: "restaurant-938.appspot.com",

    messagingSenderId: "266858569912",

    appId: "1:266858569912:web:fb2b08d1ad060983e2544d",

    measurementId: "G-KVHD8LMVN3"

)

  );

}
final themeMode = ValueNotifier(2);

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          home: SplashScreen(),
        );
      },
      valueListenable: themeMode,
    );
  }
}
