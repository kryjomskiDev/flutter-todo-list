import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_list/presentation/pages/to_do_page/body/loaded_body.dart';
import 'package:todo_list/presentation/pages/to_do_page/providers/to_do_provider.dart';
import 'package:todo_list/presentation/pages/to_do_page/widgets/app_floating_action_button.dart';
import 'package:todo_list/presentation/pages/to_do_page/widgets/app_loading_indicator.dart';
import 'package:todo_list/presentation/pages/to_do_page/widgets/modal_add_to_do.dart';

class ToDoPage extends HookConsumerWidget {
  const ToDoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListProvider);

    final controller = useTextEditingController();

    return Scaffold(
      floatingActionButton: AppFloatingActionButton(
        onPressed: () => showModal(
          context,
          ref,
          controller,
        ),
      ),
      body: state.maybeWhen(
        loading: () => const AppLoadingIndicator(),
        loaded: (todos) => ToDoPageLoadedBody(
          todos: todos,
          onDismissed: ref.read(todoListProvider.notifier).removeToDo,
          onToggle: ref.read(todoListProvider.notifier).toggleCompletedState,
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  void showModal(BuildContext context, WidgetRef ref, TextEditingController controller) => showModalBottomSheet(
        context: context,
        builder: (_) => ModalAddToDo(
          controller: controller,
          addToDoCallback: ref.read(todoListProvider.notifier).addToDo,
        ),
      ).then(
        (_) => controller.clear(),
      );
}
