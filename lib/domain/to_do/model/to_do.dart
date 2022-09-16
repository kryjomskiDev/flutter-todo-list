import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'to_do.freezed.dart';
part 'to_do.g.dart';

@freezed
@HiveType(typeId: 0)
class ToDo with _$ToDo {
  const factory ToDo({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required bool isCompleted,
  }) = _ToDo;
}
