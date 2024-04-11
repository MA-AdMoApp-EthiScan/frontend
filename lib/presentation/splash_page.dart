import 'package:ethiscan/app/user_bloc/main_user_bloc.dart';
import 'package:ethiscan/configuration_constants.dart';
import 'package:ethiscan/presentation/core/custom_loading.dart';
import 'package:ethiscan/utils/i18n_utils.dart';
import 'package:ethiscan/utils/ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MainUserBloc>(context)
         .add(const MainUserEvent.autoConnect(minDelay: Duration(seconds: 3)));
  }

  @override
  Widget build(BuildContext context) {
    double logoSize = MediaQuery.of(context).size.width * 0.35;

    return Scaffold(
      body: Container(
        color: UIColors.lightPrimaryColor,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              SizedBox(
                width: logoSize,
                height: logoSize,
                child: SvgPicture.asset("assets/images/logo_white.svg"),
              ),
              const SizedBox(height: 60),
              const SizedBox(height: 60),
              const CustomCircularLoading(
                color: UIColors.white,
              ),
              const Spacer(),
              Text(
                I18nUtils.translate(
                  context,
                  "splash.version",
                  translationParams: {
                    "version": ConfigurationConstants.DATASOURCE_VERSION
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
