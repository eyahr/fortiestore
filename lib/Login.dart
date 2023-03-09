import 'package:flutter/material.dart';
import 'package:fortistore/creer_un_compte.dart';
import 'package:fortistore/home.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 34, 45, 84),
              Color.fromARGB(157, 94, 92, 94),
              Color.fromARGB(255, 34, 45, 84),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            Image.asset(
              'image/logo1.png',
              width: 180,
            ),
            SizedBox(
              height: 20,
              width: 1,
            ),
            Text(
              'FortiStore',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 480,
              width: 325,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Connexion',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Veuillez entrer vos coordonnées.',
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email Adresse",
                        suffixIcon: Icon(
                          Icons.email,
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Mot de passe",
                        suffixIcon: Icon(Icons.visibility_off, size: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Mot de passe oublié',
                            style: TextStyle(
                                color: Color.fromARGB(255, 11, 44, 100)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 34, 45, 84),
                                  Color.fromARGB(157, 94, 92, 94),
                                  Color.fromARGB(255, 34, 45, 84),
                                ])),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                primary: Colors.white.withOpacity(0),
                              ),
                              child: Text(
                                'Connexion',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => CreerUnCompte()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: Colors.white.withOpacity(0),
                      ),
                      child: Text(
                        'Créer un compte',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
