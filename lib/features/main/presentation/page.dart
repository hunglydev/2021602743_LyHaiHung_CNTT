part of '../../feature.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
                onTap: (value) => context.read<MainBloc>().add(ChangeTabIndexEvent(index: value)),
                currentIndex: state.currentIndex,
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
                    // icon: AppImageWidget.asset(
                    //   path: AppImage.ic_home,
                    //   color: controller.currentTab.value == 0 ? AppColor.white : AppColor.white.withOpacity(0.5),
                    // ),
                    icon: CachedImageWidget(
                      url: AppImage.icHome,
                      height: 32,
                      color: state.currentIndex == 0 ? AppColor.white : AppColor.white.withOpacity(0.5),
                    ),
                    label: TranslationConstants.home.toUpperCase(),
                  ),
                  BottomNavigationBarItem(
                    // icon: AppImageWidget.asset(
                    //   path: AppImage.ic_insight,
                    //   color: controller.currentTab.value == 1 ? AppColor.white : AppColor.white.withOpacity(0.5),
                    // ),
                    icon: CachedImageWidget(
                      url: AppImage.icInsight,
                      height: 32,
                      color: state.currentIndex == 1 ? AppColor.white : AppColor.white.withOpacity(0.5),
                    ),
                    label: TranslationConstants.insights.toUpperCase(),
                  ),
                  BottomNavigationBarItem(
                    // icon: AppImageWidget.asset(
                    //   path: AppImage.ic_alarm,
                    //   color: controller.currentTab.value == 2 ? AppColor.white : AppColor.white.withOpacity(0.5),
                    // ),
                    icon: CachedImageWidget(
                      url: AppImage.icAlarm,
                      height: 32,
                      color: state.currentIndex == 2 ? AppColor.white : AppColor.white.withOpacity(0.5),
                    ),
                    label: TranslationConstants.alarm.toUpperCase(),
                  ),
                ],
              ),
              child: Container());
        },
      ),
    );
  }
}
