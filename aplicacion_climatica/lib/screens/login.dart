import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        'https://th.bing.com/th/id/R.0e288850c7bbb0042741bd4207e44202?rik=8hk9oaaaUXRVew&riu=http%3a%2f%2fst.depositphotos.com%2f1035451%2f1439%2fv%2f950%2fdepositphotos_14396773-stock-illustration-good-weather-round-background-blue.jpg&ehk=ghJmGQgk0yVT1hLLeUwakEKU6Z4DaIRmU71QMVL0zE8%3d&risl=&pid=ImgRaw&r=0',
      ),
      fit: BoxFit.cover,
    ),
  ),
  child: Center(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Container(
          child: Card(
            margin: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.person_2_rounded,
                          color: Colors.blue,
                          size: 50,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        icon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (!EmailValidator.validate(value!)) {
                          return 'Por favor, ingrese un email válido';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        icon: Icon(Icons.lock),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, ingrese una contraseña';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/Home');
                        }
                      },
                      child: Text('Iniciar sesión'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          textStyle: TextStyle(fontSize: 18),
                          primary: const Color(0xff4286f4),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ),
)

    ),
  );
}
}
