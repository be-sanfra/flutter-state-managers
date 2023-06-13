import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managers/blocs/counter_bloc.dart';

// class BlocPage extends StatefulWidget {
//   const BlocPage({Key? key}) : super(key: key);
//
//   @override
//   State<BlocPage> createState() => _BlocPageState();
// }

// class _BlocPageState extends State<BlocPage> {
class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    // setState(() {
    //   ++_counter;
    // });
    var counter = context.read<CounterBloc>();
    counter.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manager - BLoC'),
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
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) => Text(
                '${state.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => context.read<CounterBloc>().increment(),
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
