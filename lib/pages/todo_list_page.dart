import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_train/models/todo_info.dart';

import '../repository/todo_info_repository.dart';
import '../widget/todo_filter_button.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoInfoWithFilterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod_demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                _AddTodoButton(),
                SizedBox(width: 10),
                TodoFilterButton(),
              ],
            ),
            Expanded(
              child: todoList.isEmpty
                  ? Container()
                  : ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return _TodoItem(todoInfo: todoList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddTodoButton extends ConsumerWidget {
  const _AddTodoButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        final curTime = DateTime.now().millisecondsSinceEpoch;
        final formatTime =
            DateTime.fromMillisecondsSinceEpoch(curTime).toString();
        final isDone = curTime % 2 == 0;
        ref.watch(todoInfoProvider.notifier).add(
              TodoInfo(
                id: curTime,
                description: formatTime,
                isCompleted: isDone,
              ),
            );
      },
      child: const Text('新增代办事项'),
    );
  }
}

class _TodoItem extends ConsumerWidget {
  final TodoInfo todoInfo;

  const _TodoItem({
    super.key,
    required this.todoInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: Text(
            todoInfo.description ?? '',
            style: TextStyle(
              color: todoInfo.isDone
                  ? Colors.green
                  : Colors.black,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            ref.watch(todoInfoProvider.notifier).remove(todoInfo);
          },
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
