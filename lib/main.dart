import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:graduationproject/view/screens/splash_screen.dart';

GetStorage box = GetStorage();
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
   const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: 'NotoKufiArabic',
      // ),
      theme: ThemeData.light().copyWith(
          primaryColor: const Color(0xFF68B984),
          scaffoldBackgroundColor: Colors.white

      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF424242),
      ),
      themeMode:box.read('theme') == 'dark' ? ThemeMode.dark: ThemeMode.light,
      home:const SplashScreen(),
    );
  }
}