import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waterqualitydeneme2/BilgilendirmeSayfasi.dart';
import 'package:waterqualitydeneme2/YardimSayfasi.dart';
import 'package:waterqualitydeneme2/DegerGirme.dart';
import 'package:waterqualitydeneme2/data.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await data.init();
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Water Quality'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var sayfaListe = [DegerGirme(),BilgilendirmeSayfasi(),YardimSayfasi()];

  int secilenIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: sayfaListe[secilenIndex],
      drawer: Drawer(
        child: ListView(
          padding : EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Text("Water Quality",style: TextStyle(color: Colors.white,fontSize: 30),),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Anasayfa",style: TextStyle(color: Colors.black87),),
              leading: Icon(Icons.home,color: Colors.green),
              onTap: (){
                setState(() {
                  secilenIndex = 0;
                });
                Navigator.pop(context);

              },
            ),
            ListTile(
              title: Text("Yardım",style: TextStyle(color: Colors.black87),),
              leading: Icon(Icons.question_mark,color: Colors.red,),
              onTap: (){
                setState(() {
                  secilenIndex = 2;
                });
                Navigator.pop(context);

              },
            ),
            ListTile(
              title: Text("Bilgilendirme",style: TextStyle(color: Colors.black87),),
              leading: Icon(Icons.lightbulb,color: Colors.yellow,),
              onTap: (){
                setState(() {
                  secilenIndex = 1;
                });
                Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
    );
  }
}
