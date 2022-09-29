import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';

class ComicIssuePageView extends HookWidget {
  const ComicIssuePageView({
    Key? key,
    required this.title,
    required this.issues,
    required this.index,
  }) : super(key: key);

  final List<GenericInfo> issues;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (controller.hasClients) {
            controller.jumpToPage(index);
            // pageController.animateToPage(page index, duration: Duration(milliseconds: 1), curve: Curves.easeInOut);
          }
        });

        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          const VerticalDivider(),
          InkWell(
            onTap: () {
              controller.previousPage(
                duration: const Duration(milliseconds: 1),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: const [
                    Icon(Ionicons.chevron_back_outline, size: 16),
                    Text('Prev'),
                  ],
                ),
              ),
            ),
          ),
          const VerticalDivider(),
          InkWell(
            onTap: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 1),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: const [
                    Text('Next '),
                    Icon(Ionicons.chevron_forward_outline, size: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: issues.length,
        itemBuilder: (context, index) {
          return InteractiveViewer(
            child: Image.network(issues[index].url),
          );
        },
      ),
    );
  }
}
