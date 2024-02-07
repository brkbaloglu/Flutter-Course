import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './gonderikarti.dart';
import './profilsayfasi.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: <Widget>[
                      duyuru("Kamil seni takip etti", "3 dakika önce"),
                      duyuru("Seda gönderine yorum yaptı", "2 saat önce"),
                      duyuru("Cüneyt mesaj gönderdi", "1 hafta önce"),
                    ],
                  );
                });
          },
        ),
        title: Text(
          "Social World",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple[300],
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2.0),
              blurRadius: 5.0,
            )
          ]),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              profilKartiOlustur(
                  "slckmrt",
                  "https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  "Selçuk Mert",
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              profilKartiOlustur(
                  "tomwatson",
                  "https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  "Tom Watson",
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              profilKartiOlustur(
                  "jess",
                  "https://images.pexels.com/photos/18398353/pexels-photo-18398353/free-photo-of-bireysel-cekim-kizi.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  "Jessica Lopez",
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              profilKartiOlustur(
                  "belmazorlu",
                  "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  "Belma Zorlu",
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              profilKartiOlustur(
                  "yldzmars",
                  "https://images.pexels.com/photos/3779853/pexels-photo-3779853.png?auto=compress&cs=tinysrgb&w=600",
                  "Yıldız Mars",
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              profilKartiOlustur(
                  "nadircakir",
                  "https://images.pexels.com/photos/12809804/pexels-photo-12809804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  "Nadir Çakır",
                  "https://images.pexels.com/photos/5705855/pexels-photo-5705855.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        GonderiKarti(
          profilResimLinki:
              "https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          isimSoyisim: "Selçuk Demir",
          gonderiResimLinki:
              "https://images.pexels.com/photos/3785079/pexels-photo-3785079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          gecenSure: "1 saat önce",
          aciklama: "Açıklama 1",
        ),
        GonderiKarti(
          profilResimLinki:
              "https://images.pexels.com/photos/12809804/pexels-photo-12809804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          isimSoyisim: "Nadir Çelik",
          gonderiResimLinki:
              "https://images.pexels.com/photos/12809804/pexels-photo-12809804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          gecenSure: "1 gun önce",
          aciklama: "Açıklama 2",
        ),
        GonderiKarti(
          profilResimLinki:
              "https://images.pexels.com/photos/18398353/pexels-photo-18398353/free-photo-of-bireysel-cekim-kizi.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          isimSoyisim: "Jessica Will",
          gonderiResimLinki:
              "https://images.pexels.com/photos/18398353/pexels-photo-18398353/free-photo-of-bireysel-cekim-kizi.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          gecenSure: "15 dakika önce",
          aciklama: "Açıklama 3",
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            mesaj,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Text(
            gecenSure,
          ),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyisim, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimLinki: resimLinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyisim: isimSoyisim,
                    kapakResimLinki: kapakResimLinki,
                  )));
          if (donenVeri) {
            print("Kullanıcı profil sayfasından ana sayfaya döndü.");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2.0,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: NetworkImage(resimLinki),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
