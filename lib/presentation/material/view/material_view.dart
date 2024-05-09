import 'package:fci/presentation/material/view/tasks/tasks.view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:fci/presentation/material/view/exams/exams_view.dart';
import 'package:fci/presentation/material/view/lectures/lectures_view.dart';
import 'package:fci/presentation/material/view/sections/sections.dart';
import 'package:fci/presentation/material/view/summaries/summaries_view.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:fci/presentation/resources/values_manager.dart';

class MaterialView extends StatefulWidget {
  const MaterialView({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  State<MaterialView> createState() => _MaterialViewState();
}

class _MaterialViewState extends State<MaterialView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ColorManager.backGroundColor(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: AppSize.s20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: ColorManager.lightBlue,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: AppSize.s20, left: AppSize.s20),
                  child: Center(
                    child: Text(
                      widget.text,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: ColorManager.white),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: AppSize.s20),
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kSettingsView);
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: ColorManager.lightBlue,
                    ),
                  ),
                ),
              ],
            ),
            TabBar(
              dividerColor: Colors.black,
              labelColor: ColorManager.lightBlue,
              indicatorColor: ColorManager.lightBlue,
              unselectedLabelColor: ColorManager.white,
              controller: _tabController,
              isScrollable: true,
              tabs: const [
                Tab(text: AppStrings.lectures),
                Tab(text: AppStrings.sections),
                Tab(text: AppStrings.tasks),
                Tab(text: AppStrings.exams),
                Tab(text: AppStrings.summaries),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  LecturesView(),
                  SectionsView(),
                  TasksView(),
                  ExamsView(),
                  SummariesView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
