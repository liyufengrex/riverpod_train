import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_info.freezed.dart';

part 'todo_info.g.dart';

@freezed
class TodoInfo with _$TodoInfo {
  factory TodoInfo({required int id, String? description, bool? isCompleted}) =
      _TodoInfo;

  factory TodoInfo.fromJson(Map<String, Object?> json) =>
      _$TodoInfoFromJson(json);
}

extension ExTodoInfo on TodoInfo {
  bool get isDone {
    return isCompleted ?? false;
  }
}
