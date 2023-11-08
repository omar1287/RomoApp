import 'package:bookly_app/core/Utiles/Font.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/CustomList_View_Text.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/CustomSallerListView.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/Custom_AppBar.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/Custom_ListView_Items.dart';
import 'package:bookly_app/features/Home_View/Presentation/Views/Wdgits/FeatureListView.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(

      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: FeatureListView(),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Best Seller',
                  style: TextFont.textStyle20,
                ),
              ),


            ],
          )
        ),
        SliverFillRemaining(
          child: CustomSeller(),

        )
      ],
    );

  }
}
