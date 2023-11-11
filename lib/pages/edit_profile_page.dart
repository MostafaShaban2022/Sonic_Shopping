import 'package:flutter/material.dart';
import 'package:untitled1/widgets/profile_page.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/box_left.png',
                    width: 40,
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  'Order Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Image.asset(
            'assets/edit_profile.png',
            width: 110,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 40,
                width: 343,
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
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 40,
                width: 343,
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
                    hintText: 'mostafashaban@gmail.com',
                    hintStyle: const TextStyle(
                      color: Color(0xff68687A),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 40,
                width: 343,
                child: TextFormField(
                  obscureText: true,
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
                    hintText: 'Pssword',
                    hintStyle: const TextStyle(
                      color: Color(0xff68687A),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Re-Type Password',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 40,
                width: 343,
                child: TextFormField(
                  obscureText: true,
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
                    hintText: 'Re-Type Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff68687A),
                    ),
                  ),
                ),
              ),
              Container(
                width: 343,
                height: 47,
                margin: const EdgeInsets.only(top: 40),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff6C53CF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )),
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 146.2),
                child: Text(
                  'Discard',
                  style: TextStyle(
                    color: Color(0xff6C5ECF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
