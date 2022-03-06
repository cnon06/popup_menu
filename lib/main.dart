import 'package:flutter/material.dart';

void main() {
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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              PopupMenuButton(
                  child: Icon(Icons.open_in_new),
                  itemBuilder: (context) =>
                      [
                        PopupMenuItem(
                            value: 1,
                            child: Text("Sil",style: TextStyle(color: Colors.red),),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text("Güncelle",style: TextStyle(color: Colors.indigo),),
                        ),
                      ],
                onCanceled: ()
                {
                  print('Seçim iptal edildi.');
              },
                onSelected: (menuItemValue)
                {
                  switch(menuItemValue)
                  {
                    case 1:
                      print('Sil seçildi.');
                    break;
                    case 2:
                      print('Güncelle seçildi.');
                    break;

                  }
                },


              ),
          ],
        ),
      ),

    );
  }
}
