import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/core/failure/failure.dart';
import 'package:news_app/core/links/links.dart';

class HandlingView extends StatelessWidget {
  final Failure failure;
  final Widget widget;
  const HandlingView({super.key, required this.failure, required this.widget});

  @override
  Widget build(BuildContext context) {
    return failure == Failure.serverFailure
        ? Center(
            child: Lottie.asset(AppLink.serverFailure),
          )
        : failure == Failure.offline
            ? Center(
                child: Lottie.asset(AppLink.offlineFailure),
              )
            : failure == Failure.loading
                ? Center(
                    child: Lottie.asset(AppLink.loading),
                  )
                : failure == Failure.none
                    ? Center(
                        child: Lottie.asset(AppLink.loading),
                      )
                    : widget;
  }
}
