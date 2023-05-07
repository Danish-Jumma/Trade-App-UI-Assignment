import 'package:flutter/material.dart';
import 'package:myapp/SignUp_Page/Signup_page.dart';
import 'package:myapp/Signin_Page/signin_Page.dart';

void main() {
  runApp(const AccountPage());
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://png.pngtree.com/png-vector/20220607/ourmid/pngtree-upload-image-background-of-online-devices-information-and-data-to-social-png-image_4857843.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Let's you in",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            userAuth(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png",
                "Continue with Facebook"),
            userAuth(
                "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                "Continue with Google"),
            userAuth(
                "https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png",
                "Continue with Apple"),
            or(),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 320,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                child: Text(
                  "Sign in with password",
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
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an accoount?",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignUpPage())),
                      );
                    },
                    child:
                        const Text("Sign up", style: TextStyle(fontSize: 16))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// options function(facebook,google,apple)
userAuth(img, text) {
  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      Container(
        width: 320,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromARGB(255, 224, 220, 220)),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 25,
              height: 25,
              image: NetworkImage(img),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("$text", style: const TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    ],
  );
}

// or option(------ or ------)
or() {
  return Padding(
    padding: const EdgeInsets.only(top: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 140,
          height: 1,
          color: const Color.fromARGB(255, 224, 220, 220),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Text("or", style: TextStyle(fontSize: 16)),
        ),
        Container(
          width: 140,
          height: 1,
          color: const Color.fromARGB(255, 224, 220, 220),
        ),
      ],
    ),
  );
}
