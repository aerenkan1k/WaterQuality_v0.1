import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:waterqualitydeneme2/SonucEkrani.dart';

class DegerGirme extends StatefulWidget {
  const DegerGirme({Key? key}) : super(key: key);

  @override
  _DegerGirState createState() => _DegerGirState();
}

 late TextEditingController pHC;
late TextEditingController HardnessC;
late TextEditingController SolidsC ;
late TextEditingController ChloraminesC;
late TextEditingController SulfateC;
late TextEditingController ConductivityC;
late TextEditingController Organic_carbonC;
late TextEditingController TrihalomethanesC;
late TextEditingController TurbidityC;


class _DegerGirState extends State<DegerGirme> {



  @override
  final pHC = TextEditingController();
  final HardnessC = TextEditingController();
  final SolidsC = TextEditingController();
  final ChloraminesC = TextEditingController();
  final SulfateC = TextEditingController();
  final ConductivityC = TextEditingController();
  final Organic_carbonC = TextEditingController();
  final TrihalomethanesC = TextEditingController();
  final TurbidityC = TextEditingController();



  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(

      backgroundColor: Colors.cyan[50],
      body: Center(
        child : SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: pHC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "pH  ",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/10)),
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: HardnessC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Sertlik(mg/L)",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/10)),
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: SolidsC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Çözülmüş Mineral(mg/L)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/10))
                      )
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: ChloraminesC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Kloramin(mg/L)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(ekranGenisligi/10))
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: SulfateC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Sülfat(mg/L)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/10))
                      )
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: ConductivityC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "İletkenlik(μS/cm)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(ekranGenisligi/10))
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: Organic_carbonC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Organic Carbon(mg/L)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/10))
                      )
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: TrihalomethanesC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Trihalometan(ppm)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(ekranGenisligi/10))
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 95,right: 95),
                child: TextField(
                  controller: TurbidityC,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Bulanıklık(NTU)",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/10))
                      )
                  ),
                ),
              ),
              Divider(),
              ElevatedButton(
                child: Text("Değerleri Sorgula"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SonucEkrani(
                    pH:double.parse(pHC.text),
                    chloramines: double.parse(ChloraminesC.text),
                    conductivity: double.parse(ConductivityC.text),
                    hardness: double.parse(HardnessC.text),
                    organic_carbon: double.parse(Organic_carbonC.text),
                    solids: double.parse(SolidsC.text),
                    sulfate: double.parse(SulfateC.text),
                    trihalomethanes: double.parse(TrihalomethanesC.text),
                    turbidity: double.parse(TurbidityC.text),
                  )));
                  print("Değerler sorgulandı.");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
