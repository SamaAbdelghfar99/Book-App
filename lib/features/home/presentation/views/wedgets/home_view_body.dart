import 'package:bookapp/core/utils/styels.dart';
import 'package:bookapp/features/home/presentation/views/wedgets/custom_appbar.dart';
import 'package:bookapp/features/home/presentation/views/wedgets/custom_list_view_item.dart';
import 'package:bookapp/features/home/presentation/views/wedgets/feature_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Best Saller',style: Styles.textStyle18,),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/harry-potter-and-the.png'),
                ),
              ),
            ),
          ),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}



