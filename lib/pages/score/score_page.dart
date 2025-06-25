import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shmr_finance/core/shared_widgets/app_bar.dart';
import 'package:shmr_finance/di/app_scope.dart';
import 'package:shmr_finance/pages/score/logic/score_page_cubit.dart';
import 'package:shmr_finance/utils/strings/s.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

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
                  ScorePageCubit(useCase: scope.getAllAccountsUseCaseDep.get),
              child: BlocBuilder<ScorePageCubit, ScorePageState>(
                  builder: (context, state) => switch (state) {
                        Loading() => __Loading(),
                        Content() => __Content(),
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
    return const Placeholder();
  }
}

class __Content extends StatelessWidget {
  const __Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class __Error extends StatelessWidget {
  const __Error({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
