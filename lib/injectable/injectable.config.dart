// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/to_do/store/to_do_box_impl.dart' as _i4;
import '../data/to_do/store/to_do_store.impl.dart' as _i6;
import '../domain/to_do/store/to_do_box.dart' as _i3;
import '../domain/to_do/store/to_do_store.dart' as _i5;
import '../domain/to_do/use_case/add_or_update_to_do_use_case.dart' as _i7;
import '../domain/to_do/use_case/delete_to_do_use_case.dart' as _i8;
import '../domain/to_do/use_case/get_cached_todos_use_case.dart' as _i9;
import '../presentation/pages/to_do_page/providers/to_do_notifier.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.ToDoBox>(_i4.ToDoBoxImpl());
  gh.lazySingleton<_i5.ToDoStore>(() => _i6.ToDoStoreImpl(get<_i3.ToDoBox>()));
  gh.factory<_i7.AddOrUpdateToDoUseCase>(
      () => _i7.AddOrUpdateToDoUseCase(get<_i5.ToDoStore>()));
  gh.factory<_i8.DeleteToDoUseCase>(
      () => _i8.DeleteToDoUseCase(get<_i5.ToDoStore>()));
  gh.factory<_i9.GetCachedToDosUseCase>(
      () => _i9.GetCachedToDosUseCase(get<_i5.ToDoStore>()));
  gh.factory<_i10.ToDoNotifier>(() => _i10.ToDoNotifier(
      get<_i7.AddOrUpdateToDoUseCase>(),
      get<_i8.DeleteToDoUseCase>(),
      get<_i9.GetCachedToDosUseCase>()));
  return get;
}
