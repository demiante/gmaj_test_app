import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(child: Text("Aplicacion TEST")),
        appBar: AppBar(
          title: Text("Gmaj Center"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              //  DrawerHeader(),
              ListTile(
                title: Text("Clase 11"),
                onTap: () {
                  Navigator.pushNamed(context, "/Clase11");
                },
              ),
              ListTile(
                title: Text("Clase 12"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Clase 13"),
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
