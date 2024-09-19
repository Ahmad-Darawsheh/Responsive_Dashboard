import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dots_indicator.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int curPageIndex=0;

  @override
  void initState() {
    pageController=PageController();
    pageController.addListener((){
      curPageIndex=pageController.page!.round();
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         SizedBox(
          width: 420,
          child:  Text('My card',style: AppStyles.styleSemiBold20(context),),
        ),
        const SizedBox(height: 10,),
        MyCardsPageView(pageController: pageController,),
        const SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: DotsIndicator(curPageIndex: curPageIndex,),
         ),
      ],
    );
  }
}
