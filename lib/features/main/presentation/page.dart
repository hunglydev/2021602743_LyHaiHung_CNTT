part of '../../feature.dart';

class MainPage extends StatelessWidget {
  final StatefulNavigationShell statefulNavigationShell;
  const MainPage({
    super.key,
    required this.statefulNavigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return AppScaffold(
            alignLayer: AlignmentDirectional.bottomEnd,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColor.red,
              onTap: (value) {
                // Ensure that the correct route is navigated when the tab is tapped
                statefulNavigationShell.goBranch(value);
                context.read<MainBloc>().add(ChangeTabIndexEvent(index: value));
              },
              currentIndex: statefulNavigationShell.currentIndex,
              unselectedItemColor: AppColor.white.withOpacity(0.5),
              unselectedFontSize: 12.0,
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
              selectedItemColor: AppColor.white,
              selectedFontSize: 12.0,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: CachedImageWidget(
                    url: AppImage.icHome,
                    height: 32,
                    color: state.currentIndex == 0 ? AppColor.white : AppColor.white.withOpacity(0.5),
                  ),
                  label: AppLocalization.of(context).home,
                ),
                BottomNavigationBarItem(
                  icon: CachedImageWidget(
                    url: AppImage.icInsight,
                    height: 32,
                    color: state.currentIndex == 1 ? AppColor.white : AppColor.white.withOpacity(0.5),
                  ),
                  label: AppLocalization.of(context).insights,
                ),
                BottomNavigationBarItem(
                  icon: CachedImageWidget(
                    url: AppImage.icAlarm,
                    height: 32,
                    color: state.currentIndex == 2 ? AppColor.white : AppColor.white.withOpacity(0.5),
                  ),
                  label: AppLocalization.of(context).alarm,
                ),
              ],
            ),
            child: IndexedStack(
              index: statefulNavigationShell.currentIndex,
              children: const [
                HomePage(),
                Scaffold(
                  backgroundColor: Colors.black,
                ),
                Scaffold(
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
