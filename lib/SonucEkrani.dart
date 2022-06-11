
import 'package:flutter/material.dart';
import 'package:waterqualitydeneme2/BilgilendirmeSayfasi.dart';
import 'package:waterqualitydeneme2/DegerGirme.dart';
import 'package:waterqualitydeneme2/main.dart';


class SonucEkrani extends StatefulWidget {
  const SonucEkrani({Key? key,required this.pH,required this.hardness,
    required this.solids,required this.chloramines,
    required this.sulfate,
    required this.conductivity,
    required this.organic_carbon,
    required this.trihalomethanes,
    required this.turbidity}) : super(key: key);

  final double pH;
  final double hardness;
  final double solids;
  final double chloramines;
  final double sulfate;
  final double conductivity;
  final double organic_carbon ;
  final double trihalomethanes ;
  final double turbidity;
  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}
class _SonucEkraniState extends State<SonucEkrani> {
  @override
  void initState() {
    hesapla();
  }
  void hesapla(){
    print(widget.pH);
    print(widget.hardness);
    print(widget.solids);
    print(widget.chloramines);
    print(widget.sulfate);
    print(widget.conductivity);
    print(widget.organic_carbon);
    print(widget.trihalomethanes);
    print(widget.turbidity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Center(
      child : SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("pH", widget.pH)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Hardness", widget.hardness)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Solid", widget.solids)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Chloromines", widget.chloramines)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Sulfate", widget.sulfate)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Conductivity", widget.conductivity)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Organic Carbon", widget.organic_carbon)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Trihalomethanes", widget.trihalomethanes)}",style: TextStyle(fontSize: 17),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${sonuc("Turbidity", widget.turbidity)}",style: TextStyle(fontSize: 17),),
        ),
        Divider(),
        ElevatedButton(
          child: Text("Uyarı"),
          onPressed: (){
            showDialog(
                context: context,
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Uyarı"),
                    content: Text("Girdiğiniz tüm değerlerin uygun olmasına dikkat edin!"),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
            );
          },
        ),
        ElevatedButton(
          child: Text("Değer girme ekranına dönmek için tıklayınız."),
          onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ],
      ),
    ),
      ),
    );
  }


  String sonuc(String key, double sayi){

    if(key == "pH"){
      if(sayi>8.5 || sayi<6.5){
        return "pH değeri uygun değildir.";
      }
      else{
        return "pH değeri uygundur.";
      }
    }
    else if(key == "Hardness"){
      if(sayi>1500){
        return "Sertlik değeri uygun değildir.";
      }
      else{
        return "Sertlik değeri uygundur.";
      }
    }
    else if(key == "Solid"){
      if(sayi>1000){
        return "Çözülmüş Mineral değerleri uygun değildir.";
      }
      else if(sayi<500){
        return "Çözülmüş Mineral değerleri değeri uygun değildir.";
      }
      else{
        return "Çözülmüş Mineral değerleri değeri uygundur.";
      }

    }
    else if(key == "Chloromines"){
      if(sayi>4){
        return "Kloramin değeri uygun değildir";
      }
      else{
        return "Kloramin değeri uygundur.";
      }
    }
    else if (key == "Sulfate"){
      if(sayi>30){
        return "Sülfat değeri uygun değildir";
      }
      else if(sayi<3){
        return "Sülfat değeri uygun değildir";
      }
      else{
        return "Sülfat değeri uygundur.";
      }
    }
    else if(key == "Conductivity"){
      if(sayi>400){
        return "İletkenlik değeri uygun değildir";
      }
      else{
        return "İletkenlik değeri uygundur.";
      }
    }
    else if(key == "Organic Carbon"){
      if(sayi>4){
        return "Organic Carbon değeri uygun değildir";
      }
      else{
        return "Organic Carbon değeri uygundur.";
      }
    }
    else if(key == "Trihalomethanes"){
      if(sayi>80){
        return "Trihalometan değeri uygun değildir";
      }
      else{
        return "Trihalometan değeri uygundur.";
      }
    }
    else if(key == "Turbidity"){
      if(sayi>5){
        return "Bulanıklık değeri uygun değildir";
      }
      else{
        return "Bulanıklık değeri uygundur.";
      }

    }
    else {
      return "";
    }
    }
  }





