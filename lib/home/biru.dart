import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/home/center_widget.dart';

class Biru extends StatelessWidget {
  Biru({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.blue,
      child: CenterWidget(),
    );
  }
}
