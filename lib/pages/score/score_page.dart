import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/core/shared_widgets/bottom_sheet/show_bottom_sheet.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/bottom_sheet_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item.dart';
import 'package:shmr_finance/core/shared_widgets/list_item/header_list_item_with_shaking.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/pages/score/logic/score_page_cubit.dart';
import 'package:shmr_finance/utils/router/app_routes.dart';
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
              create: (context) => ScorePageCubit(
                useCase: scope.getAllAccountsUseCaseDep.get,
                updateAccountUseCase: scope.updateAccountByIdUseCaseDep.get,
              )..getAccount(),
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
          onTap: () {
            context.push('./${SubRoutes.scoreUpdate.routeName}',
                extra: score.id);
          },
        ),
        ShmrHeaderListItem(
          leftTitle: strings.currency,
          rigthTitle: score.currencySign,
          isChevroned: true,
          onTap: () => showCurrencyBottomSheet(context),
        ),
        // плейсхолдер для графика
        SizedBox(
          height: 200,
          child: Placeholder(),
        )
      ],
    );
  }

  void showCurrencyBottomSheet(BuildContext context) {
    final cubit = BlocProvider.of<ScorePageCubit>(context);
    final items = List.generate(Currency.values.length, (index) {
      if (Currency.values[index] != Currency.undefined) {
        return ShmrBottomSheetListItem(
          leadingIcon: Currency.values[index].iconData,
          title: Currency.toName(Currency.values[index], context),
          onTap: () => cubit.setCurrency(Currency.values[index]),
        );
      }
      return SizedBox.shrink();
    });
    items.add(ShmrBottomSheetListItem(
      leadingIcon: Icons.cancel_outlined,
      isRejectItem: true,
    ));

    shmrShowBottomSheet(context, items);
  }
}

class __Error extends StatelessWidget {
  const __Error({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
