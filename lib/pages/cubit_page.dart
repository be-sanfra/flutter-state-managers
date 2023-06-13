import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managers/cubits/counter_cubit.dart';

// class CubitPage extends StatefulWidget {
//   const CubitPage({Key? key}) : super(key: key);
//
//   @override
//   State<CubitPage> createState() => _CubitPageState();
// }

// class _CubitPageState extends State<CubitPage> {
class CubitPage extends StatelessWidget {
  const CubitPage({Key? key}) : super(key: key);

  void _incrementCounter(BuildContext context) {
    // setState(() {
    //   ++_counter;
    // });
    var counter = context.read<CounterCubit>();
    counter.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manager - Cubit'),
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
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) => Text(
                '$state',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => context.read<CounterCubit>().increment(),
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
