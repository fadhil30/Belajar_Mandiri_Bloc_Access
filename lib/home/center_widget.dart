import 'package:flutter/material.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/home/data_widget.dart';

class CenterWidget extends StatelessWidget {
  CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DataWidget(),
    );
  }
}
