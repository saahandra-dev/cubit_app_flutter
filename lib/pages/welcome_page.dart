import 'package:cubit_app/misc/colors.dart';
import 'package:cubit_app/widgets/app_large_text.dart';
import 'package:cubit_app/widgets/app_text.dart';
import 'package:cubit_app/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ];
  List text = [
    'Mountain hikes give you an incredible sense of freedom along with endurance test',
    'Gives you a taste of Canada mountains, from Horseshoe Bay in the north of Vancouver to Pemberton',
    'Moraine Lake is yet another astonishing geographical location that you cannot afford to miss out on if you\'re travelling along the icefields Parkway',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('img/'+images[index])
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top:150, left: 20, right:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Trips'),
                      AppText(text: 'Mountain', size: 30,),
                      SizedBox(height: 20.0),
                      Container(
                        width: 250.0,
                        child: AppText(
                          text: text[index],
                          color: AppColors.textColor2,
                          size: 14.0,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      ResponsiveBtn(width: 120,)
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3)
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}