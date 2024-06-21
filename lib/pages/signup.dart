import 'package:flutter/material.dart';
import 'package:flutter_test_freemo_app/pages/home_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return const RegisterPage();
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  bool _isObscure = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    FocusNode focusNode = FocusNode();

    return Scaffold(
      body: Container(
        width: screenWidth,
        margin: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      color: Color.fromARGB(255, 187, 31, 31),
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color.fromARGB(255, 187, 31, 31),
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            const Image(
              image: AssetImage("lib/assets/logo.png"),
              width: 180.0,
              height: 100.0,
            ),
            const Text(
              "S'inscrire",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Créer un compte",
              style: TextStyle(color: Colors.grey, fontSize: 20.0),
            ),
            const SizedBox(height: 40.0),
            IntlPhoneField(
                  focusNode: focusNode,
                  initialCountryCode: 'CM',
                  decoration: const InputDecoration(
                    labelText: 'Mobile No',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  languageCode: "en",
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.code);
                  },
                ),
            const SizedBox(height: 20.0),
            TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                ),
                
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              obscureText: _isObscure2,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Confirm your password',
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),
                contentPadding: const EdgeInsets.all(20.0),
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure2 = !_isObscure2;
                    });
                  },
                  icon: Icon(
                      _isObscure2 ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 40.0),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
              },
              //async {},
              color: const Color.fromARGB(255, 187, 31, 31),
              minWidth: screenWidth - 64,
              padding: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: const Text(
                'S\'inscrire',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 50.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already have an account,",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " Sign in",
                  style: TextStyle(
                      color: Color.fromARGB(255, 187, 31, 31),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
