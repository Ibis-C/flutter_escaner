import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inventarios_fisicos/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
            child: Image.asset(
              "assets/logo.png",
              height: 200,
            ),
          ),
          Center(
            child: Card(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // controller: ____
                      decoration: InputDecoration(
                          labelText: 'Usuario',
                          fillColor: Colors.blueGrey[50],
                          labelStyle: const TextStyle(fontSize: 15),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      // controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        counterText: '¿se te olvidó?',
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        /* suffixIcon: IconButton(
                          icon: pass
                              ? const Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.grey,
                                )
                              : const Icon(
                                  Icons.visibility_outlined,
                                  color: Colors.grey,
                                ),
                          onPressed: () {
                            setState(
                              () {
                                pass = !pass;
                              },
                            );
                          },
                        ), */
                        fillColor: Colors.blueGrey[50],
                        labelStyle: const TextStyle(fontSize: 15),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      // obscureText: pass,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoButton.filled(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.principal);
                        },
                        borderRadius: BorderRadius.circular(7),
                        child: const Text('Inicio'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
