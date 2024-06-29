import 'package:flutter/material.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:job_finder/pages/main_container.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  void _changeScreen(screen) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => screen,
      ),
    ); //
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),

            // header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logovar1.png",
                  width: 80,
                ),
                // IconButton(
                //   icon: const Icon(Icons.clear_rounded),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // )
              ],
            ),

            const SizedBox(
              height: 60,
            ),

            // greeting text
            const Text(
              "Join LinkIn",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
            ),

            GestureDetector(
              onTap: () {
                _changeScreen(const MainContainer());
              },
              child: const Text.rich(
                TextSpan(
                  text: "or ",
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF006394),
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // sign up forms
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Full Name"),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            TextField(
              controller: pwdController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
              obscureText: true,
            ),

            const SizedBox(
              height: 16,
            ),

            // user agreement text
            const Text.rich(
              style: TextStyle(color: Colors.black54),
              TextSpan(
                text: "By clicking Agree & Join or Continue, you agree to ",
                children: [
                  TextSpan(
                    text: "LinkIn's User Agreementand ",
                    style: TextStyle(
                      color: Color(0xFF006394),
                    ),
                  ),
                  TextSpan(
                    text: ", ",
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Color(0xFF006394),
                    ),
                  ),
                  TextSpan(
                    text: ", and ",
                  ),
                  TextSpan(
                    text: "Cookie Policy",
                    style: TextStyle(
                      color: Color(0xFF006394),
                    ),
                  ),
                  TextSpan(
                    text: ".",
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            // submit button
            Consumer<UserModel>(
              builder: (context, value, child) => Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    value.addUser(nameController.text, emailController.text,
                        pwdController.text);
                    if (value.getStatus()) {
                      value.setBerhasil();
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) {
                      //       return Login();
                      //     },
                      //   ),
                      // );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF006394),
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text(
                    "Agree & Join",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // or divider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or"),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            // SIGN IN OPTIONS
            // google options
            OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/social/google.png",
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            // apple options
            OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/social/apple.png",
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Continue with Apple",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            // one-time link
            OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.link_rounded,
                      size: 28,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Continue with a one-time link",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
