// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'to_do_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ToDo> todos) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ToDo> todos)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ToDo> todos)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToDoStateLoading value) loading,
    required TResult Function(ToDoStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToDoStateLoading value)? loading,
    TResult Function(ToDoStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToDoStateLoading value)? loading,
    TResult Function(ToDoStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res> implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  final ToDoState _value;
  // ignore: unused_field
  final $Res Function(ToDoState) _then;
}

/// @nodoc
abstract class _$$ToDoStateLoadingCopyWith<$Res> {
  factory _$$ToDoStateLoadingCopyWith(
          _$ToDoStateLoading value, $Res Function(_$ToDoStateLoading) then) =
      __$$ToDoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToDoStateLoadingCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res>
    implements _$$ToDoStateLoadingCopyWith<$Res> {
  __$$ToDoStateLoadingCopyWithImpl(
      _$ToDoStateLoading _value, $Res Function(_$ToDoStateLoading) _then)
      : super(_value, (v) => _then(v as _$ToDoStateLoading));

  @override
  _$ToDoStateLoading get _value => super._value as _$ToDoStateLoading;
}

/// @nodoc

class _$ToDoStateLoading implements ToDoStateLoading {
  const _$ToDoStateLoading();

  @override
  String toString() {
    return 'ToDoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToDoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ToDo> todos) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ToDo> todos)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ToDo> todos)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToDoStateLoading value) loading,
    required TResult Function(ToDoStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToDoStateLoading value)? loading,
    TResult Function(ToDoStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToDoStateLoading value)? loading,
    TResult Function(ToDoStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ToDoStateLoading implements ToDoState {
  const factory ToDoStateLoading() = _$ToDoStateLoading;
}

/// @nodoc
abstract class _$$ToDoStateLoadedCopyWith<$Res> {
  factory _$$ToDoStateLoadedCopyWith(
          _$ToDoStateLoaded value, $Res Function(_$ToDoStateLoaded) then) =
      __$$ToDoStateLoadedCopyWithImpl<$Res>;
  $Res call({List<ToDo> todos});
}

/// @nodoc
class __$$ToDoStateLoadedCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res>
    implements _$$ToDoStateLoadedCopyWith<$Res> {
  __$$ToDoStateLoadedCopyWithImpl(
      _$ToDoStateLoaded _value, $Res Function(_$ToDoStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ToDoStateLoaded));

  @override
  _$ToDoStateLoaded get _value => super._value as _$ToDoStateLoaded;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$ToDoStateLoaded(
      todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
    ));
  }
}

/// @nodoc

class _$ToDoStateLoaded implements ToDoStateLoaded {
  const _$ToDoStateLoaded(final List<ToDo> todos) : _todos = todos;

  final List<ToDo> _todos;
  @override
  List<ToDo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'ToDoState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoStateLoaded &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$ToDoStateLoadedCopyWith<_$ToDoStateLoaded> get copyWith =>
      __$$ToDoStateLoadedCopyWithImpl<_$ToDoStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ToDo> todos) loaded,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ToDo> todos)? loaded,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ToDo> todos)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToDoStateLoading value) loading,
    required TResult Function(ToDoStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToDoStateLoading value)? loading,
    TResult Function(ToDoStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToDoStateLoading value)? loading,
    TResult Function(ToDoStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ToDoStateLoaded implements ToDoState {
  const factory ToDoStateLoaded(final List<ToDo> todos) = _$ToDoStateLoaded;

  List<ToDo> get todos;
  @JsonKey(ignore: true)
  _$$ToDoStateLoadedCopyWith<_$ToDoStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
