import 'package:flutter/material.dart';
import 'package:myapp/Home_Page/home_page.dart';

void main() {
  runApp(const SignUpPage());
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "Fill Your Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.person,
                  size: 130,
                  color: Colors.grey[350],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              userInput("Full Name"),
              const SizedBox(
                height: 15,
              ),
              userInput("Nick Name"),
              const SizedBox(
                height: 15,
              ),
              dateEmailInput("Date of Birth", Icons.calendar_month_outlined),
              const SizedBox(
                height: 15,
              ),
              dateEmailInput("Email", Icons.email),
              const SizedBox(
                height: 15,
              ),
              dateEmailInput("Gender", Icons.arrow_drop_down),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 320,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HomePage())));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

userInput(
  text,
) {
  return Container(
    width: 320,
    height: 60,
    child: TextField(
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(fontSize: 16),
          filled: true,
          fillColor: const Color.fromARGB(255, 241, 241, 241),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          )),
    ),
  );
}

dateEmailInput(text, icon) {
  return Container(
    width: 320,
    height: 60,
    child: TextField(
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(fontSize: 16),
          filled: true,
          fillColor: const Color.fromARGB(255, 241, 241, 241),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(icon)),
    ),
  );
}
