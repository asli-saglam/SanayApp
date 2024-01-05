import 'package:flutter/material.dart';
import 'package:proje_odev/main.dart';
import 'homePage.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  //final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin:EdgeInsets.only(left: 85, right: 85, top: 130, bottom: 10),
              padding:EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'İsin Soyisim',
                  labelStyle: TextStyle(fontFamily: 'Arial',fontSize: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin:EdgeInsets.only(left: 85, right: 85, top: 7, bottom: 10),
              padding:EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(fontFamily: 'Arial',fontSize: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin:EdgeInsets.only(left: 85, right: 85, top: 7, bottom: 10),
              padding:EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: TextStyle(fontFamily: 'Arial',fontSize: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                primary: Color(0xFF31304D),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
                  ),
                );
              },
              child: const Text('Kayıt Ol',
                style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 10), // Boşluk ekleyebilirsiniz
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              child: const Text(
                'Zaten Hesabınız Var Mı?',
                style: TextStyle(
                  color: Color(0xFF31304D),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

