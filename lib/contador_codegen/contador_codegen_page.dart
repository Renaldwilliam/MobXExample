import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/contador_codegen/contador_codegem_controller.dart';

class ContadorCodegenPage extends StatefulWidget {
  ContadorCodegenPage({super.key});

  @override
  State<ContadorCodegenPage> createState() => _ContadorCodegenPageState();
}

class _ContadorCodegenPageState extends State<ContadorCodegenPage> {
  final controller = ContadorCodegemController();
  final reactionDisposer = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();

    var autorundisposer = autorun((_) {
      print('-------------------------- Auto run ---------------------');
      print(controller.fullName.first);
      print(controller.fullName.last);
    });

    final reactionDiposer = reaction((_) => controller.counter, (counter) {
      print('---------------------- reaction ------------------------');
      print(counter);
    });

    final whenDisposer = when((_) => controller.fullName.first == "Renald", () { 
      print('---------------------- When  ------------------------');
      print(controller.fullName.first);

    });

    reactionDisposer.add(autorundisposer);
    reactionDisposer.add(reactionDiposer);
    reactionDisposer.add(whenDisposer);
  }

  @override
  void dispose() {
    super.dispose();
    for (var reaction in reactionDisposer) {
      reaction();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Contador MobX CodeGen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (context) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (context) {
                return Text(
                  controller.fullName.first,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (context) {
                return Text(
                  controller.fullName.last,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (context) {
                return Text(
                  controller.saudacao,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            TextButton(onPressed: () => controller.changeName(), child: const Text('Alterar Nome')),
            TextButton(onPressed: () => controller.rollbackName(), child: const Text('Rollback Nome'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
