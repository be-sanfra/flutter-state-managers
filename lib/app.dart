import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managers/models/counter.dart';
import 'package:state_managers/pages/provider_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (contextChangeNotifierProvider) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProviderPage(),
      ),
    );
  }
}
