import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListView(
          children: [
            // header
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logovar1.png",
                    width: 120,
                  ),
                  const Icon(Icons.clear_rounded)
                ]),

            const SizedBox(
              height: 60,
            ),

            // greeting text
            const Text(
              "Sign in",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            ),

            const Row(
              children: [
                Text("or "),
                Text(
                  "Join Link In",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Color(0xFF006394)),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            // sign in forms
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Email")),
            ),

            const SizedBox(
              height: 16,
            ),

            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Password")),
              obscureText: true,
            ),

            const SizedBox(
              height: 20,
            ),

            // forgot password
            const Text(
              "Forgot Password",
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xFF006394)),
            ),

            const SizedBox(
              height: 20,
            ),

            // submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF006394),
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
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
          ],
        ),
      ),
    );
  }
}
