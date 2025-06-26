import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item_with_shaking.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/pages/score/logic/score_page_cubit.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import 'logic/score_page_view_model.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ShmrAppBar(
        title: S.of(context).my_score,
        buttonIcon: Icons.edit_outlined,
        onTap: () {},
        child: _Page());
  }
}

class _Page extends StatelessWidget {
  const _Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopeBuilder<AppScopeContainer>.withPlaceholder(
        builder: (context, scope) => BlocProvider(
              create: (context) =>
                  ScorePageCubit(useCase: scope.getAllAccountsUseCaseDep.get)
                    ..getAccount(),
              child: BlocBuilder<ScorePageCubit, ScorePageState>(
                  builder: (context, state) => switch (state) {
                        Loading() => __Loading(),
                        Content() => __Content(
                            viewModel: state.content,
                          ),
                        CustomError() => __Error(),
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
  final ScorePageViewModel viewModel;
  const __Content({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    // хз один счёт или нет
    final score = viewModel.items.first;
    final strings = S.of(context);
    return Column(
      children: [
        ShmrHeaderListItemWithShaking(
          leadingEmoji: score.emoji,
          isGreenEmoji: false,
          leftTitle: strings.balance,
          rigthTitle: '${score.amount} ${score.currencySign}',
          isChevroned: true,
        ),
        ShmrHeaderListItem(
          leftTitle: strings.currency,
          rigthTitle: score.currencySign,
          isChevroned: true,
        ),
        SizedBox(
          height: 200,
          child: Placeholder(),
        )
      ],
    );
  }
}

class __Error extends StatelessWidget {
  const __Error({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
