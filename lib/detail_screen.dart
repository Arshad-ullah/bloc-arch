import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
      return Scaffold(
          body: SafeArea(
        child: ListView.builder(
          itemCount: counterBloc.nameList.length,
          itemBuilder: (context, index) {
            if (state is StringState) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(state.nameList[index][0]),
                  ),
                  title: Text(state.nameList[index]),
                  trailing: IconButton(
                    onPressed: () {
                      counterBloc
                          .add(StringDeleteEvent(txt: state.nameList[index]));
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              );
            }
          },
        ),
      ));
    });
  }
}
