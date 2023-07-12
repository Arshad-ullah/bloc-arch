import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context, listen: true);

    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        itemCount: counterBloc.nameList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(counterBloc.nameList[index][0]),
              ),
              title: Text(counterBloc.nameList[index]),
              trailing: IconButton(
                onPressed: () {
                  counterBloc
                      .add(StringDeleteEvent(txt: counterBloc.nameList[index]));
                },
                icon: Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    ));
  }
}
