import 'dart:ui';

import 'package:app_cotizacion_dolarpy/Interfaz/comfresponse.dart';
import 'package:app_cotizacion_dolarpy/Interfaz/principal.dart';
import 'package:flutter/material.dart';


class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {


  @override
  Widget build(BuildContext context) {
    GlobalKey <ScaffoldState> _menu = GlobalKey<ScaffoldState>();
    return Scaffold(

      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 1000,
          color: Color.fromRGBO(221, 221, 221, 0.5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(children: [
                  Icon(Icons.monetization_on, size: 40),
                  Spacer(),
                  if(!responsive.establet(context))CloseButton(),
                ],),
                SizedBox(height: 60,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => principal(),));
                  },
                  child: Padding(padding: EdgeInsets.only(left: 30, right: 30,),
                    child: Card(
                      child: ListTile(
                        title: Text('Inicio'),
                        trailing: Icon(Icons.home),
                      ),
                    ),),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => cambioresponse(),));
                  },
                  child: Padding(padding: EdgeInsets.only(left: 30, right: 30,),
                    child: Card(
                      child: ListTile(
                        title: Text('Cotizacion'),
                        trailing: Icon(Icons.money),
                      ),
                    ),),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
