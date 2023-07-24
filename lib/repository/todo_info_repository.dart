import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_train/models/todo_info.dart';

class TodoInfoNotifier extends StateNotifier<List<TodoInfo>> {
  TodoInfoNotifier() : super([]);

  void add(TodoInfo todoInfo) {
    state = [...state, todoInfo];
  }

  void remove(TodoInfo todoInfo) {
    final list = state.where((element) => element.id != todoInfo.id).toList();
    state = list;
  }
}

final todoInfoProvider =
    StateNotifierProvider<TodoInfoNotifier, List<TodoInfo>>(
  (ref) {
    return TodoInfoNotifier();
  },
);

// 根据筛选分类读取数据
final todoInfoWithFilterProvider = Provider<List<TodoInfo>>(
  (ref) {
    final todoInfoList = ref.watch(todoInfoProvider);
    final currentFilter = ref.watch(todoListCurrentFilter);
    switch (currentFilter) {
      case TodoListFilter.all:
        return todoInfoList;
      case TodoListFilter.completed:
        return todoInfoList.where((element) => element.isDone).toList();
      case TodoListFilter.unCompleted:
        return todoInfoList.where((element) => !element.isDone).toList();
    }
  },
);

// 筛选分类枚举
enum TodoListFilter {
  all,
  completed,
  unCompleted,
}

extension ExTodoListFilter on TodoListFilter {
  String get name {
    switch (this) {
      case TodoListFilter.all:
        return '全部';
      case TodoListFilter.completed:
        return '已完成';
      case TodoListFilter.unCompleted:
        return '未完成';
    }
  }
}

final todoListCurrentFilter = StateProvider((_) => TodoListFilter.all);
