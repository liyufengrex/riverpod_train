import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_train/res/routes.dart';
import 'repository/todo_info_repository.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosLength = ref.watch(todoInfoProvider).length;
    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod_demo'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('当前代办清单数量：$todosLength'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.todoListPage);
              },
              child: const Text('查看详情'),
            ),
          ],
        ),
      ),
    );
  }
}
