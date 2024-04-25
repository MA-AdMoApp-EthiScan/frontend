import 'package:flutter/material.dart';
import 'package:mobileapp/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobileapp/application/survey/current/survey_current_bloc.dart';
import 'package:mobileapp/presentation/core/buttons/icon_button.dart';
import 'package:mobileapp/presentation/core/custom_loading.dart';
import 'package:mobileapp/presentation/core/custom_texts.dart';
import 'package:mobileapp/presentation/home/widgets/home_card.dart';
import 'package:mobileapp/presentation/survey/pages/survey_page.dart';
import 'package:mobileapp/presentation/utils/i18n_utils.dart';


class HomeSurveyCard extends StatefulWidget {
  const HomeSurveyCard({Key? key}) : super(key: key);

  @override
  State<HomeSurveyCard> createState() => _HomeSurveyCardState();
}

class _HomeSurveyCardState extends State<HomeSurveyCard> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SurveyCurrentBloc>(
      create: (context) => getIt(),
      child: BlocBuilder<SurveyCurrentBloc, SurveyCurrentState>(
        builder: (context, state) => state.when(
          loading: () =>
              const _HomeSurveyCard(loading: true),
          empty: () =>
              const _HomeSurveyCard(),
          error: () =>
              const _HomeSurveyCard(error: true),
          idle: (survey) =>
              _HomeSurveyCard(surveyName: survey.label, surveyId: survey.id),
        ),
      ),
    );
  }
}

class _HomeSurveyCard extends HomeCard {
  final String? surveyName;
  final int? surveyId;
  final bool error;

  const _HomeSurveyCard({this.surveyName, this.surveyId, this.error = false, bool loading = false})
      : super(
    loading: loading,
    swapNavigation: true,
    showChildWhileLoading: true,
    disableNavigation: surveyName == null || error || loading,
  );

  @override
  Widget title(BuildContext context) {
    if (error) {
      return CustomH2(I18nUtils.translate(context, "home.data.error-title"));
    }

    return CustomH2(surveyName != null
        ? surveyName!
        : I18nUtils.translate(context, 'home.data.title-no-survey'));
  }

  @override
  Widget? child(BuildContext context) {
    if (error) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomText(
              I18nUtils.translate(context, "home.data.error-text"),
            ),
          ),
          SecondaryIconButton(
            icon: Icons.refresh,
            onTap: () => BlocProvider.of<SurveyCurrentBloc>(context)
                .add(const SurveyCurrentEvent.load()),
          ),
        ],
      );
    }

    if (surveyName == null) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomText(
              I18nUtils.translate(context, "home.data.text-no-form"),
            ),
          ),
          loading
              ? const CustomCircularLoading(size: 18, padding: EdgeInsets.all(3))
              : SecondaryIconButton(
            icon: Icons.refresh,
            size: 24,
            onTap: () => BlocProvider.of<SurveyCurrentBloc>(context)
                .add(const SurveyCurrentEvent.load()),
          ),
        ],
      );
    }
    return CustomText(
      I18nUtils.translate(context, 'home.data.survey-text'),
    );
  }

  @override
  Widget page() => SurveyPage(surveyId!);
}