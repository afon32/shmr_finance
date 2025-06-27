import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/universal_list_item_with_changing_title.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/pages/score/update_account/logic/update_score_page_cubit.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/update_score_page_view_model.dart';

class UpdateScorePage extends StatelessWidget {
  final int scoreId;
  const UpdateScorePage({super.key, required this.scoreId});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(title: S.of(context).my_score, child: _Page(id: scoreId));
  }
}

class _Page extends StatelessWidget {
  final int id;
  const _Page({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => BlocProvider(
              create: (context) => UpdateScorePageCubit(
                  getAccountUseCase: scope.getAccountByIdUseCaseDep.get,
                  updateAccountUseCase: scope.updateAccountByIdUseCaseDep.get,
                  id: id)
                ..getAccountById(),
              child: BlocBuilder<UpdateScorePageCubit, UpdateScorePageState>(
                  builder: (context, state) => switch (state) {
                        Loading() => __Loading(),
                        Content() => __Content(
                            viewModel: state.content,
                          ),
                        CustomError() => __Error(e: state.error),
                        _ => __Loading()
                      }),
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
  final UpdateScorePageViewModel viewModel;
  const __Content({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<UpdateScorePageCubit>(context);
    return Column(
      children: [
        ShmrUniversalListItemWithChanging(
          leadingEmoji: viewModel.emoji,
          leftTitle: viewModel.name,
          rigthTitle: '${viewModel.amount.round()} ${viewModel.currency.sign}',
          onEnter: (string) {
            print('new name : $string');
            cubit.updateAccount(string);
          },
        ),
        ElevatedButton(onPressed: () {}, child: Text('Удаления не будет бтв'))
      ],
    );
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
