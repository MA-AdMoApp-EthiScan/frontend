import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp/presentation/core/buttons/box_button.dart';
import 'package:mobileapp/presentation/utils/ui_colors.dart';
import 'package:mobileapp/presentation/utils/utils.dart';
import 'package:mobileapp/presentation/core/custom_loading.dart';

abstract class HomeCard extends StatelessWidget {
  final bool loading;
  final bool swapNavigation;
  final bool showChildWhileLoading;
  final bool disableNavigation;
  final bool hidden;
  final EdgeInsetsGeometry padding;
  final Color color;

  const HomeCard(
      {Key? key, this.loading = false,
      this.swapNavigation = false,
      this.showChildWhileLoading = false,
      this.disableNavigation = false,
      this.hidden = false,
      this.color = UIColors.white,
      this.padding = const EdgeInsets.symmetric(horizontal: 30)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? child = this.child(context);

    if (hidden) {
      return Container();
    }

    return Padding(
      padding: padding,
      child: BoxButton(
        color: color,
        expanded: true,
        animated: !disableNavigation,
        child: loading && !showChildWhileLoading
            ? const CustomCircularLoading()
            : _childWrapper(context, child),
        onTap: () {
          if (canNavigate()) {
            if (swapNavigation) {
              NavigationUtils.swap(context, page());
            } else {
              NavigationUtils.push(context, page());
            }
          }
        },
      ),
    );
  }

  Widget _childWrapper(BuildContext context, Widget? child) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(context),
          if (child != null) ...[
            const SizedBox(height: 15),
            child,
          ],
        ],
      );

  Widget? child(BuildContext context);

  Widget title(BuildContext context);

  Widget page();

  bool canNavigate() => !disableNavigation;
}
