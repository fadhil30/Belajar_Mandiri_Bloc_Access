import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/home/biru.dart';

class Kuning extends StatelessWidget {
  Kuning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.amber,
      child: Biru(),
    );
  }
}
