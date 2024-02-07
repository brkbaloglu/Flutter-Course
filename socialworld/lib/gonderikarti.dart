import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResimLinki;
  final String isimSoyisim;
  final String gecenSure;
  final String gonderiResimLinki;
  final String aciklama;

  const GonderiKarti(
      {super.key,
      required this.profilResimLinki,
      required this.isimSoyisim,
      required this.gecenSure,
      required this.gonderiResimLinki,
      required this.aciklama});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 380.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.indigo,
                          image: DecorationImage(
                            image: NetworkImage(
                              profilResimLinki,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyisim,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            gecenSure,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                aciklama,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
                gonderiResimLinki,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IkonluButon(Icons.favorite, "Beğen", () {
                    print("Beğen");
                  }),
                  IkonluButon(Icons.comment, "Yorum Yap", () {
                    print("Yorum Yap");
                  }),
                  IkonluButon(Icons.share, "Paylaş", () {
                    print("Paylaş");
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IkonluButon extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyon;

  IkonluButon(this.ikonum, this.yazi, this.fonksiyon);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyon,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
