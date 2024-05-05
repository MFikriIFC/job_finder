import 'package:flutter/material.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:job_finder/pages/authentication/login_page.dart';
import 'package:job_finder/pages/container_page.dart';
import 'package:provider/provider.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(
      builder: (context, value, child) =>
          value.isLogin ? const ContainerPage() : Login(),
    );
  }
}
