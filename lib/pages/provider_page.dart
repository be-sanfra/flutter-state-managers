import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managers/models/counter.dart';

// class ProviderPage extends StatefulWidget {
//   const ProviderPage({Key? key}) : super(key: key);
//
//   @override
//   State<ProviderPage> createState() => _ProviderPageState();
// }

// class _ProviderPageState extends State<ProviderPage> {
class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    // setState(() {
    //   ++_counter;
    // });
    var counter = context.read<Counter>();
    counter.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manager - Provider + ChangeNotifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            Consumer<Counter>(
              builder: (contextConsumer, counter, child) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => context.read<Counter>().increment(),
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
