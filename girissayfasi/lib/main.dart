import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giriş Sayfası',
      theme:
          ThemeData(primarySwatch: Colors.purple, primaryColor: Colors.white),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 55.0,
            ),
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Cute-Robot-Diver-Logo.png")),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "SocialWorld",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 7.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Kullanıcı girişi",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        width: double.infinity,
                        height: 52.0,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Facebook giriş",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Gmail giriş",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: Color(0xffe34264),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(209, 208, 94, 227),
                          Color.fromARGB(209, 202, 148, 212),
                          Color.fromARGB(255, 237, 222, 238),
                        ]),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 70.0,
                height: 180.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
