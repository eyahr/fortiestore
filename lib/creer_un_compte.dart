import 'package:flutter/material.dart';
import 'package:fortistore/creer_un_compte.dart';
import 'package:fortistore/home.dart';
import 'package:url_launcher/url_launcher.dart';

class CreerUnCompte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Row(
          children: [
            const Text(
              'FortiStore',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 34, 45, 84),
      ),
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
              SizedBox(height: 30),
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
                height: 20,
              ),
              Container(
                height: 600,
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
                      'Créer un compte',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Veuillez saisir vos coordonnées.',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Société",
                          suffixIcon: Icon(
                            Icons.store,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Nom du gérant",
                          suffixIcon: Icon(
                            Icons.supervisor_account,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Matricule fiscal",
                          suffixIcon: Icon(
                            Icons.numbers,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Adresse",
                          suffixIcon: Icon(
                            Icons.place,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
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
                        decoration: InputDecoration(
                          labelText: "Nº de téléphone",
                          suffixIcon: Icon(
                            Icons.phone,
                            size: 17,
                          ),
                        ),
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
                                  'Créer un compte',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
