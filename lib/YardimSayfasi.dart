import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YardimSayfasi extends StatefulWidget {
  const YardimSayfasi({Key? key}) : super(key: key);

  @override
  _YardimSayfasiState createState() => _YardimSayfasiState();
}

class _YardimSayfasiState extends State<YardimSayfasi> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/100),
              child: SizedBox(
                  width: ekranGenisligi/2,
                  height: ekranYuksekligi/2,
                  child: Image.asset("images/playstore.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Bu uygulama verilen parametreler dahilinde suyun içilebilir olup olmadığını"
                  " sınıflandırmak için programlanmıştır."
                  "Anasayfada sizden istenilen değerleri girdikten sonra 'Değerleri Sorgula' yazan butona tıkladıktan sonra sonucu görebilirsiniz."
                  "Drawerda bulunan 'Bilgilendirme' sayfasından parametrelerle ilgili kısa bilgileri incelebilirsiniz.",style: TextStyle(fontSize: ekranGenisligi/22)),
            ),
          ],
        ),
      ),
    );
  }
}
