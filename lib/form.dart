import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  late String _password;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Email',
            ),
            onSaved: (value) => _password,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                  ),
                  onPressed: _toggle,
                )),
            obscureText: _obscureText,
            validator: (value) {
              if (value == null || value.length < 6) {
                return 'password is invalid';
              }
              return null;
            },
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 60, top: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing')));
                }
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.black;
                    return Colors.grey.shade200;
                  },
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 5,
            color: Colors.grey.shade200,
          )
        ],
      ),
    );
  }
}
