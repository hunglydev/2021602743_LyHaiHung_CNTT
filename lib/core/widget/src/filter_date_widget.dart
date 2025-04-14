part of '../widget.dart';

class FilterDateWidget extends StatelessWidget {
  final Function()? onPressed;
  final DateTime startDate;
  final DateTime endDate;

  const FilterDateWidget({
    super.key,
    this.onPressed,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return FilterWidget(
          onPressed: onPressed,
          title: '${DateFormat(
            'MMM dd, yyyy',
            // state.currentLocale.languageCode,
          ).format(startDate)} - ${DateFormat(
            'MMM dd, yyyy',
            // appController.currentLocale.languageCode,
          ).format(endDate)}',
        );
      },
    );
  }
}
