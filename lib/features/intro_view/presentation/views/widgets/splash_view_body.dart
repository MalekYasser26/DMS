import 'package:doctor_management_system/features/intro_view/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationRtoL;
  late Animation<Offset> slidingAnimationLtoR;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2));

    slidingAnimationRtoL = Tween<Offset>(begin:const Offset(10,0),end:const Offset(1,0))
        .animate(animationController);
    animationController.forward();

    slidingAnimationLtoR = Tween<Offset>(begin:const Offset(-10,0),end:const Offset(-.8,0))
        .animate(animationController);
    animationController.forward();

    Future.delayed(const Duration(seconds:4 ),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const OnboardingView() ,)),
    );

  }

  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff159BAD),
      body:Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  AnimatedBuilder(
                      animation: slidingAnimationRtoL,
                      builder: (context,_){
                        return SlideTransition(
                          position: slidingAnimationRtoL,
                          child: Text(
                            "CareConnect",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white
                                )
                            ),
                            textAlign: TextAlign.center,
                          ),);
                      }),
                  AnimatedBuilder(
                      animation: slidingAnimationLtoR,
                      builder: (context,_){
                        return SlideTransition(
                            position: slidingAnimationLtoR,
                            child:SizedBox(
                              height: 15.h,
                              width: 25.w,
                              child: Row(
                                children: [
                                  Image.asset("assets/images/splash2.png",height: 4.5.h,width: 5.w,),
                                  Stack(children:[ Image.asset("assets/images/splash1.png",height: 12.h,width: 12.w,),
                                    Positioned(left:.2,top:26, child:Image.asset("assets/images/splash3.png",height: 5.h,width: 5.w,)),
                                  ])
                                ],
                              ),
                            ));
                      })
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}