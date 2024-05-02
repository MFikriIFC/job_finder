import 'package:flutter/material.dart';
import 'package:job_finder/models/bottom_nav_model.dart';
import 'package:provider/provider.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BNavModel>(
        builder: (context, value, child) => value.getPage());
  }
}
