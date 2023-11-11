import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 134,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Center(
              child: Image.asset(
                'assets/icon_logo.png',
                width: 80,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
              width: 295,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20, top: 11),
                    fillColor: const Color(0xff2C3545),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Name',
                    hintStyle: const TextStyle(
                      color: Color(0xff68687A),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              width: 295,
              child: TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, top: 11),
                  fillColor: const Color(0xff2C3545),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                    color: Color(0xff68687A),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              width: 295,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20, top: 11),
                    fillColor: const Color(0xff2C3545),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff68687A),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              width: 295,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20, top: 11),
                    fillColor: const Color(0xff2C3545),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Re Type Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff68687A),
                    )),
              ),
            ),
            const SizedBox(
              height: 39,
            ),
            SizedBox(
              height: 47,
              width: 295,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff6C5ECF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xff6C5ECF),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
