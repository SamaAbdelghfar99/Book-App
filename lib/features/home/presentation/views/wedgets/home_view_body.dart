import 'package:bookapp/core/utils/styels.dart';
import 'package:bookapp/features/home/presentation/views/wedgets/best_saller_list_view_item.dart';
import 'package:bookapp/features/home/presentation/views/wedgets/best_seller_list_view.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Best Saller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 12,
              ),

            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );

  }
}

