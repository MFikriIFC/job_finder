import 'package:flutter/material.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:provider/provider.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PageModel>(
      builder: (context, value, child) => value.getJobPage(),
    );
  }
}
