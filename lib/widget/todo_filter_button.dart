import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_train/repository/todo_info_repository.dart';

// 控制筛选框显示
final filterBoxDisplayProvider = StateProvider.autoDispose((ref) => false);

class TodoFilterButton extends ConsumerWidget {
  final List<TodoListFilter> filters;

  const TodoFilterButton({
    super.key,
    this.filters = const [
      TodoListFilter.all,
      TodoListFilter.completed,
      TodoListFilter.unCompleted,
    ],
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterBoxDisplay = ref.watch(filterBoxDisplayProvider);
    // 获取当前的过滤分类
    final currentFilter = ref.watch(todoListCurrentFilter.notifier).state.name;
    return PortalTarget(
      visible: filterBoxDisplay,
      anchor: const Aligned(
        follower: Alignment.topLeft,
        target: Alignment.bottomCenter,
      ),
      portalFollower: Material(
        elevation: 8,
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: filters
                .map(
                  (e) => ListTile(
                    title: Text(e.name),
                    onTap: () {
                      ref
                          .watch(todoListCurrentFilter.notifier)
                          .update((state) => e);
                      ref
                          .watch(filterBoxDisplayProvider.notifier)
                          .update((state) => false);
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          ref
              .watch(filterBoxDisplayProvider.notifier)
              .update((state) => !state);
        },
        child: Text(currentFilter),
      ),
    );
  }
}
