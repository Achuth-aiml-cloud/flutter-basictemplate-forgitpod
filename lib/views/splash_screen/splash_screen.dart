import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:gitpod_flutter_quickstart/consts/images.dart';
import 'package:gitpod_flutter_quickstart/consts/strings.dart';
import 'package:gitpod_flutter_quickstart/consts/styles.dart';
import 'package:gitpod_flutter_quickstart/views/auth_screen/login_screen.dart';
import 'package:gitpod_flutter_quickstart/widgets_common/applogo_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(const LoginScreen());
    });
  }

  @override
  void initState(){
    changeScreen();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg,width: 300,),),
            const HeightBox(20),
            applogoWidget(),
            const HeightBox(10),
            appversion.text.white.make(),
            const Spacer(),
            "@bossongole".text.white.fontFamily(semibold).make(),
            const HeightBox(30),
          ],
        ),
      ),
    );
  }
}