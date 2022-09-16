import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => $initGetIt(getIt);
