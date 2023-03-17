import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/home/merah.dart';
import 'package:latihan_bloc/other/other.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter mycounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEPENDENCY INJECCTION'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => OtherPage(),
          // ));
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => BlocProvider.value(
          //     value: mycounter,
          //     child: OtherPage(),
          //   ),
          // ));

          Navigator.of(context).pushNamed('/other');
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  mycounter.decrement();
                },
                child: SizedBox(
                  height: 100,
                  width: 70,
                  child: Icon(
                    Icons.remove_circle_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Merah(),
            Material(
              color: Colors.green,
              child: InkWell(
                onTap: () {
                  mycounter.increment();
                },
                child: SizedBox(
                  height: 100,
                  width: 70,
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
