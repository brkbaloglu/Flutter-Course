import 'package:flutter/material.dart';

import './gonderikarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyisim;
  final String kullaniciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;

  const ProfilSayfasi({
    super.key,
    required this.kullaniciAdi,
    required this.isimSoyisim,
    required this.kapakResimLinki,
    required this.profilResimLinki,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 230.0,
                  // color: Colors.yellow,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                        image: NetworkImage(
                          kapakResimLinki,
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              profilResimLinki,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                Positioned(
                  top: 180.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        isimSoyisim,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        kullaniciAdi,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "Takip Et",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  sayac("Takipçi", "20K"),
                  sayac("Takip", "500"),
                  sayac("Paylaşım", "75"),
                ],
              ),
            ),
            GonderiKarti(
              profilResimLinki: profilResimLinki,
              isimSoyisim: isimSoyisim,
              gonderiResimLinki:
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              gecenSure: "1 saat önce",
              aciklama: "Açıklama 1",
            ),
          ],
        ));
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          sayi,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
