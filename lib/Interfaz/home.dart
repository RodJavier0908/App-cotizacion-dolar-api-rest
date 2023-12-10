import 'package:app_cotizacion_dolarpy/Interfaz/comfresponse.dart';
import 'package:app_cotizacion_dolarpy/Interfaz/menu.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import '../api/dolarpy.dart';
import 'package:http/http.dart' as http;
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  Cambios? cambios;

  @override
  void initState() {
    obtenerCambios();
    super.initState();
  }

  obtenerCambios() async {
    var url = Uri.https('dolar.melizeche.com', 'api/1.0/');
    var response = await http.get(
      url,
    );

    setState(() {
      cambios = Cambios.fromJson(jsonDecode(response.body));
      SetC = cambios?.dolarpy?.set?.compra?.toString() ?? "N/A";
      SetV = cambios?.dolarpy?.set?.venta?.toString() ?? "N/A";

      bcpC = cambios?.dolarpy?.bcp?.compra?.toString() ?? "N/A";
      bcpV = cambios?.dolarpy?.bcp?.venta?.toString() ?? "N/A";

      VisionC = cambios?.dolarpy?.vision?.compra?.toString() ?? "N/A";
      VisionV = cambios?.dolarpy?.vision?.venta?.toString() ?? "N/A";

      bonanzaC = cambios?.dolarpy?.bonanza?.compra?.toString() ?? "N/A";
      bonanzaV = cambios?.dolarpy?.bonanza?.venta?.toString() ?? "N/A";

      amambayC = cambios?.dolarpy?.amambay?.compra?.toString() ?? "N/A";
      amambayV = cambios?.dolarpy?.amambay?.venta?.toString() ?? "N/A";

      InterfizaC = cambios?.dolarpy?.interfisa?.compra?.toString() ?? "N/A";
      InterfizaV = cambios?.dolarpy?.interfisa?.venta?.toString() ?? "N/A";

      MaxiCambiosC = cambios?.dolarpy?.maxicambios?.compra?.toString() ?? "N/A";
      MaxiCambiosV = cambios?.dolarpy?.maxicambios?.venta?.toString() ?? "N/A";

      EuroscambioC = cambios?.dolarpy?.eurocambios?.compra?.toString() ?? "N/A";
      EurocambiasV = cambios?.dolarpy?.eurocambios?.venta?.toString() ?? "N/A";

      CambiosChacoC = cambios?.dolarpy?.cambioschaco?.compra?.toString() ?? "N/A";
      CambiosChacoV = cambios?.dolarpy?.cambioschaco?.venta?.toString() ?? "N/A";
    });
  }
  String SetC = "N/A";
  String SetV = "N/A";
  String bcpC = "N/A";
  String bcpV = "N/A";
  String VisionC = "N/A";
  String VisionV = "N/A";
  String bonanzaC = "N/A";
  String bonanzaV = "N/A";
  String amambayC = "N/A";
  String amambayV = "N/A";
  String InterfizaC = "N/A";
  String InterfizaV = "N/A";
  String MaxiCambiosC = "N/A";
  String MaxiCambiosV = "N/A";
  String EuroscambioC = "N/A";
  String EurocambiasV = "N/A";
  String CambiosChacoC = "N/A";
  String CambiosChacoV = "N/A";


  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _menu = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _menu,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: menu(),
      ),
      body: SafeArea(
        child: Container(
          height: 1000,
          decoration: BoxDecoration(
            color: Colors.white60,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    if(!responsive.establet(context)) IconButton(onPressed: () {
                      _menu.currentState?.openDrawer();
                    }, icon: Icon(Icons.menu, size: 30,)),
                    Spacer(),
                    Text('Cotizacion del Dolar', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 1000,
                decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(15)
                ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 45, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            //color: const Color(0x20ff7f50),
                              color: Colors.white12,
                              //border: Border.all(color: const Color(0xffEFBF31)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Spacer(),
                                  Text('\n                      '),
                                  Text('Compra'),
                                  Spacer(),
                                  Text('Venta'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('      Set            '),
                                  Spacer(),
                                  Text('$SetC'),
                                  Spacer(),
                                  Text('  $SetV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('      Bcp             '),
                                  Spacer(),
                                  Text('$bcpC'),
                                  Spacer(),
                                  Text('$bcpV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('     Vision        '),
                                  Spacer(),
                                  Text('$VisionC'),
                                  Spacer(),
                                  Text('$VisionV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('    Intefiza        '),
                                  Spacer(),
                                  Text('$InterfizaC'),
                                  Spacer(),
                                  Text('$InterfizaV'),
                                  Spacer(),
                                ],
                              ),

                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('   Bonanza       '),
                                  Spacer(),
                                  Text('$bonanzaC'),
                                  Spacer(),
                                  Text('$bonanzaV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('  Amambay      '),
                                  Spacer(),
                                  Text('$amambayC'),
                                  Spacer(),
                                  Text('$amambayV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('MaxiCambios  '),
                                  Spacer(),
                                  Text('$MaxiCambiosC'),
                                  Spacer(),
                                  Text('$MaxiCambiosV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('EurosCambios '),
                                  Spacer(),
                                  Text('$EuroscambioC'),
                                  Spacer(),
                                  Text('$EurocambiasV'),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('CambiosChaco'),
                                  Spacer(),
                                  Text('$CambiosChacoC'),
                                  Spacer(),
                                  Text('$CambiosChacoV'),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
