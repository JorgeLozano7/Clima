import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => Login();
}

class Login extends State<login> {
  // Verifica si el correo electrónico tiene un formato válido
  bool _isValidEmail(String email) {
    final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  // Verifica si la contraseña es demasiado corta
  bool _isPasswordTooShort(String password) {
    return password.length < 8;
  }

  static Future<User?> loginUsingEmailAndPassword(
      String email, String password, BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Usuario no encontrado')),
        );
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bienvenido a la aplicacion',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            // const Text(
            //   'Inicia sesion',
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 44.0,
            //       fontWeight: FontWeight.bold),
            // ),
            const SizedBox(
              height: 44.0,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ingresa tu email',
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Ingresa tu password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, '/register');
  },
  child: const Text(
    '¿No tienes una cuenta? Crea una cuenta',
    style: TextStyle(
      color: Colors.blue,
    ),
  ),
),

            const SizedBox(
              height: 10.0,
            ),
            Container(
              child: RawMaterialButton(
                fillColor: const Color(0xFF0069FE),
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                onPressed: () async {
                  if (!_isValidEmail(_emailController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Correo electrónico no válido')),
                    );
                    return;
                  }
                  if (_isPasswordTooShort(_passwordController.text)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('La contraseña es demasiado corta')),
                    );
                    return;
                  }

                  User? user = await loginUsingEmailAndPassword(
                      _emailController.text, _passwordController.text, context);
                  print(user);
                  if (user != null) {
                    //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ProfileScreen()));
                    Navigator.pushNamed(context, '/Home');
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
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
