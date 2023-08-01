import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/future/future_controller.dart';

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  final controller = FutureController();

  @override
  void initState() {
    super.initState();
    controller.buscarNome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.buscarNome();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Future MobX'),
        ),
        body: Observer(
          builder: (_) {
            return FutureBuilder<String>(
                future: controller.nomefuture,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return const SizedBox.shrink();
                    case ConnectionState.waiting:
                    case ConnectionState.active:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    case ConnectionState.done:
                      if (snapshot.hasData) {
                        return Center(
                          child: Text(
                            snapshot.data!,
                          ),
                        );
                      }
                      return const Center(
                        child: Text(
                          'Sem Dados',
                        ),
                      );
                  }
                });
          },
        ));
  }
}
