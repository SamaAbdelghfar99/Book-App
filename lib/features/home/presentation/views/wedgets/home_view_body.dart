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
          child: Text('Best Saller',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),),
        )
      ],
    );
  }
}


