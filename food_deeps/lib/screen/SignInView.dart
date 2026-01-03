import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomeView.dart';

class Signinview extends StatefulWidget {
  const Signinview({super.key});

  @override
  State<Signinview> createState() => _SigninviewState();
}

class _SigninviewState extends State<Signinview> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  Future<void> login() async {
    final prefs = await SharedPreferences.getInstance();

    final savedName = prefs.getString('name');
    final savedEmail = prefs.getString('email');
    final savedPassword = prefs.getString('password');

    final inputUser = usernameController.text.trim();
    final inputPass = passwordController.text.trim();

    if ((inputUser == savedName || inputUser == savedEmail) &&
        inputPass == savedPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeView()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("اسم المستخدم أو كلمة المرور غير صحيحة"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffb902),
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top Bar
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "Register ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// Title
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Sign In ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Lorem ipsum dolor sut amet,consectetur adipiscing elit, sed do tempor.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Material(
                elevation: 10,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),

                      /// Username
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 236, 236),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: TextField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "username",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// Password + Eye Icon
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        margin: const EdgeInsets.only(left: 40, right: 40),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 236, 236),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: passwordController,
                                obscureText: isPasswordHidden,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                isPasswordHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  isPasswordHidden = !isPasswordHidden;
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// Forgot password
                      const Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      /// Sign In Button
                      InkWell(
                        onTap: login,
                        child: Container(
                          margin: const EdgeInsets.only(left: 40, right: 40),
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: const Center(
                            child: Text(
                              "Sing In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      /// Social Buttons (كما هي)
                      Expanded(
                        child: Material(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 239, 236, 236),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                /// Google
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 30,
                                    right: 30,
                                  ),
                                  child: Material(
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/google.png",
                                            height: 40,
                                            width: 40,
                                          ),
                                          const SizedBox(width: 20),
                                          const Text(
                                            "Continue with Google ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Icon(Icons.arrow_forward),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 30),

                                /// Facebook
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 30,
                                    right: 30,
                                  ),
                                  child: Material(
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(15),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/facebook.png",
                                            height: 40,
                                            width: 40,
                                          ),
                                          const SizedBox(width: 20),
                                          const Text(
                                            "Continue with Facbook",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Icon(Icons.arrow_forward),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
