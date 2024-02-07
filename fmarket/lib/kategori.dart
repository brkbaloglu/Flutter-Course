import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({super.key, required this.kategori});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;
  Widget urunKarti(String isim, String fiyat, String resimUrl, bool mevcut) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimUrl: resimUrl,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.2),
                blurRadius: 4.0,
                spreadRadius: 3.0,
              ),
            ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                isim,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                fiyat,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
            ]),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Zeytinyağı",
          "100 TL",
          "https://images.pexels.com/photos/33783/olive-oil-salad-dressing-cooking-olive.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          true,
        ),
        urunKarti(
          "Süt",
          "25 TL",
          "https://media.istockphoto.com/id/535489242/tr/foto%C4%9Fraf/pouring-milk-in-the-glass-on-the-background-of-nature.jpg?b=1&s=612x612&w=0&k=20&c=v5fdt63FOX1pC3F-aZb4WDH61ctwCynz8dJai9FjC-g=",
          true,
        ),
        urunKarti(
          "Et 1 Kg",
          "350 TL",
          "https://images.pexels.com/photos/618775/pexels-photo-618775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          true,
        ),
        urunKarti(
          "Yumurta",
          "40 TL",
          "https://images.pexels.com/photos/4021695/pexels-photo-4021695.jpeg?auto=compress&cs=tinysrgb&w=600",
          false,
        ),
        urunKarti(
          "Makarna",
          "23.5 TL",
          "https://images.pexels.com/photos/6287550/pexels-photo-6287550.jpeg?auto=compress&cs=tinysrgb&w=600",
          true,
        ),
        urunKarti(
          "Çay",
          "80 TL",
          "https://cdn.akakce.com/caykur/caykur-tiryaki-1000-gr-3-lu-paket-z.jpg",
          true,
        ),
        urunKarti(
          "Un 5 Kg",
          "150 TL",
          "https://images.pexels.com/photos/6287581/pexels-photo-6287581.jpeg?auto=compress&cs=tinysrgb&w=600",
          false,
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Çikolata",
          "40 TL",
          "https://images.pexels.com/photos/4110101/pexels-photo-4110101.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          true,
        ),
        urunKarti(
          "Kurabiye",
          "80 TL",
          "https://images.pexels.com/photos/4110541/pexels-photo-4110541.jpeg?auto=compress&cs=tinysrgb&w=600",
          false,
        ),
        urunKarti(
          "Kek",
          "120 TL",
          "https://images.pexels.com/photos/940838/pexels-photo-940838.jpeg?auto=compress&cs=tinysrgb&w=600",
          true,
        ),
        urunKarti(
          "Pasta",
          "250 TL",
          "https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          true,
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Portakal Suyu",
          "80 TL",
          "https://images.pexels.com/photos/3603/healthy-breakfast-orange-juice-health.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          false,
        ),
        urunKarti(
          "Şişe Su",
          "8 TL",
          "https://static.ticimax.cloud/cdn-cgi/image/width=540,quality=85/48857/uploads/urunresimleri/buyuk/1003838-cca939.jpg",
          true,
        ),
        urunKarti(
          "Maden Suyu 6'lı",
          "25 TL",
          "https://cdnsta.avansas.com/mnresize/900/-/urun/68818/beypazari-dogal-maden-suyu-sade-200-ml-6-li-paket-zoom-1.jpg",
          true,
        ),
        urunKarti(
          "Gazoz",
          "189,99 TL",
          "https://productimages.hepsiburada.net/s/10/375-375/9223083032626.jpg",
          false,
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Bulaşık Deterjanı",
          "150 TL",
          "https://images.pexels.com/photos/5217912/pexels-photo-5217912.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          true,
        ),
        urunKarti(
          "Sıvı Sabun",
          "80 TL",
          "https://images.pexels.com/photos/7796734/pexels-photo-7796734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          true,
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
