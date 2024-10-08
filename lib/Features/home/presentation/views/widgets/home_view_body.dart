import 'package:bookly/Features/home/presentation/views/widgets/featured_books_list_view_bloc_builder.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return const [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: CustomAppBar(),
                ),
                FeatuedBooksListViewBlocBuilder(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          // SliverFillRemaining(
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 30),
          //     child: BestSellerListView(),
          //   ),
          // ),
        ];
      },
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: BestSellerListView(),
      ),
    );
  }
}
