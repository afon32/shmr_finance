import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/searching_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/categories_page_cubit.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(title: S.of(context).my_score, child: _Page());
  }
}

class _Page extends StatelessWidget {
  const _Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => BlocProvider(
              create: (context) => CategoriesPageCubit(
                  useCase: scope.getAllCategoriesUseCaseDep.get)
                ..getCategories(),
              child:
              Builder(builder: (context) => Column(
                children: [
                  ShmrSearchingItem(
                      label: S.of(context).search_category,
                      onChanged: (word) =>
                          BlocProvider.of<CategoriesPageCubit>(context)
                              .fuzzySearchByName(word)),
                  Expanded(
                      child:
                          BlocBuilder<CategoriesPageCubit, CategoriesPageState>(
                              builder: (context, state) => switch (state) {
                                    Loading() => __Loading(),
                                    Content() => __Content(
                                        viewModel: state.content,
                                      ),
                                    CustomError() => __Error(e: state.error),
                                    _ => __Loading()
                                  }))
                ],
              )),
            ));
  }
}

class __Loading extends StatelessWidget {
  const __Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class __Content extends StatelessWidget {
  final CategoriesPageViewModel viewModel;
  const __Content({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: viewModel.items.length,
        itemBuilder: (context, index) {
          final item = viewModel.items[index];

          return ShmrUniversalListItem(
              leadingEmoji: item.emoji, leftTitle: item.name);
        });
  }
}

class __Error extends StatelessWidget {
  final Exception e;
  const __Error({required this.e, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Error: $e'),
    );
  }
}
