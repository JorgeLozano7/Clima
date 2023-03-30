import 'package:flutter/material.dart';

class comentarios extends StatefulWidget {
  const comentarios({Key? key}) : super(key: key);

  @override
  State<comentarios> createState() => _comentariosState();
}

class _comentariosState extends State<comentarios> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff4286f4), Color(0xff373B44)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              'Sugerencias y comentarios',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    children: [
                      Text('Tu opinion es muy importante para nosotros'),
                      Text('Escribe tu comentario aqui'),
                    ]
                  )
                ),
                TextFormField(
                  controller: _controller,
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: 'Escribe aquí tus comentarios',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, escribe tus comentarios';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Aquí puedes enviar los comentarios
                      print(_controller.text);
                    }
                  },
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
