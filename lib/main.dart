import 'package:counter_flutter_bloc/counter_bloc.dart';
import 'package:counter_flutter_bloc/counter_event.dart';
import 'package:counter_flutter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
      lazy: false,
      create: (context) => CounterBloc(CounterState.intial()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        bloc: BlocProvider.of<CounterBloc>(context),
        builder: (context, CounterState state) {
          return Center(
              child: Column(
            children: [
              Text('You have pused the button this many times:'),
              Text(
                '${state.counter}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent()),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    BlocProvider.of<CounterBloc>(context);
    super.dispose();
  }
}
