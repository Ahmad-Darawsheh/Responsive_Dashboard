import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_model.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';

class AllExpensessItemsRow extends StatelessWidget {
  AllExpensessItemsRow({
    super.key,
    
  });
  List<AllExpensessModel> item = [
    AllExpensessModel(
        image: Assets.imagesMoney,
        title: 'Income',
        date: 'April 2022',
        price: '\$20.219'),
    AllExpensessModel(
        image: Assets.imagesCardDown,
        title: 'Income',
        date: 'April 2022',
        price: '\$20.219'),
    AllExpensessModel(
        image: Assets.imagesCardUp,
        title: 'Income',
        date: 'April 2022',
        price: '\$20.219')
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: item.map((e) => Expanded(child: AllExpensessItem(model: e))).toList(),
      children: item.asMap().entries.map((e){
        int index=e.key;
        var item=e.value;
        if(index==1)
        {
          return Expanded(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal:12),
            child: AllExpensessItem(model: item,),),
          );
        }else{
          return Expanded(child: AllExpensessItem(model: item,));
        }
        }).toList(),
    );
  }
}
