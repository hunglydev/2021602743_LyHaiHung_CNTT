part of '../../feature.dart';

class ScrollBloodPressureValueWidget extends StatelessWidget {
  final Function(int) onSelectedItemChanged;
  final Widget Function(BuildContext context, int value) itemBuilder;
  final String title;
  final int childCount;
  final int? initItem;

  const ScrollBloodPressureValueWidget({
    super.key,
    required this.onSelectedItemChanged,
    required this.itemBuilder,
    required this.title,
    required this.childCount,
    this.initItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            title,
            style: normalTextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        SizedBox(
          width: 100.0,
          height: 140.0,
          child: ScrollConfiguration(
            behavior: const DisableGlowBehavior(),
            child: CupertinoPicker.builder(
              scrollController: FixedExtentScrollController(initialItem: initItem ?? 20),
              childCount: childCount,
              itemExtent: 60.0,
              onSelectedItemChanged: onSelectedItemChanged,
              selectionOverlay: Container(
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Color(0xFFCACACA),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              itemBuilder: itemBuilder,
            ),
          ),
        ),
      ],
    );
  }
}
