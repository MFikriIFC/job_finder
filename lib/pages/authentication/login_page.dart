import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/pages/authentication/register_page.dart';
import 'package:job_finder/pages/home/home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void _changeScreen (screen){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => screen,
      ),
    ); // 
  }

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
              "Sign in",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
            ),

            GestureDetector(
              onTap: () {
                _changeScreen(const Register()); // Call your _changeScreen function here
              },
              child: const Text.rich(
                TextSpan(
                  text: "or ",
                  children: [
                    TextSpan(
                      text: "Join LinkIn",
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

            // sign in forms
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            const TextField(
              decoration: InputDecoration(
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

            // forgot password
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF006394),
                    fontSize: 12),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            // submit button
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  _changeScreen(const HomePage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF006394),
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
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
                      "Sign In with Apple",
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
                      "Sign In with Google",
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
                      "Sign In with a one-time link",
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
