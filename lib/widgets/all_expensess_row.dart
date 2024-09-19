import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_model.dart';
import 'package:responsive_dashboard/utils/app_images/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';


class AllExpensessItemsRow extends StatefulWidget {
  AllExpensessItemsRow({
    super.key,
  });

  @override
  State<AllExpensessItemsRow> createState() => _AllExpensessItemsRowState();
}

class _AllExpensessItemsRowState extends State<AllExpensessItemsRow> {
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
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: item.map((e) => Expanded(child: AllExpensessItem(model: e))).toList(),
      children: [ Expanded(
            child: GestureDetector(
              onTap: (){updateIndex(0);},
              child: AllExpensessItem(
                model: item[0],
                isSelected: selectedIndex == 0,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: GestureDetector(
              onTap: (){updateIndex(1 );},
              child: AllExpensessItem(
                model: item[1],
                isSelected: selectedIndex == 1,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: GestureDetector(
              onTap: (){updateIndex(2);},
              child: AllExpensessItem(
                model: item[2],
                isSelected: selectedIndex == 2,
              ),
            ),
          ),
          
        ]
    );
  }
  
  updateIndex(int index) {
    setState(() {
      selectedIndex=index;
    });
  }
}
