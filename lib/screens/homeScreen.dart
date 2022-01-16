import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(child: Text("Aplicacion de testeo ")),
        appBar: AppBar(
          title: Text("Gmaj Center"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              //  DrawerHeader(),
              ListTile(
                title: Text("Clase 11-12"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/Clase11");
                },
              ),
              ListTile(
                title: Text("Clase 13"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Clase 14"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
