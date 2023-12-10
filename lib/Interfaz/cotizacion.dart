
import 'package:app_cotizacion_dolarpy/Interfaz/comfresponse.dart';
import 'package:app_cotizacion_dolarpy/Interfaz/menu.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import '../api/dolarpy.dart';
import 'package:http/http.dart' as http;
class cotizacion extends StatefulWidget {
  const cotizacion({super.key});

  @override
  State<cotizacion> createState() => _cotizacionState();
}

class _cotizacionState extends State<cotizacion> {

  Cambios? cambios;

  @override
  void initState() {
    obtenerCambios();
    super.initState();
  }

  obtenerCambios() async {
    var datos = Uri.https('dolar.melizeche.com', 'api/1.0/');
    var response = await http.get(
      datos,
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


  //          Vaviables
  TextEditingController _dolaracambiar = TextEditingController();
  String bankname = 'Banco ';
  double datoscambioC = 0;
  double datoscambioV = 0;
  double resultado = 0;
  Color colorvision = Color.fromRGBO(221, 221, 221, 0.5);
  Color colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
  Color colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
  Color colorset = Color.fromRGBO(221, 221, 221, 0.5);
  Color coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
  Color colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
  Color coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
  Color colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
  Color colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);

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

          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    if(!responsive.establet(context))
                      IconButton(onPressed: () {
                        _menu.currentState?.openDrawer();
                      }, icon: Icon(Icons.menu)),
                    Spacer(),
                    Text('Cambio Dolar a Guaranies', style: TextStyle(fontSize: 22
                        , fontWeight: FontWeight.w500),),
                    Spacer()
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Vision', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+VisionC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+VisionV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colorvision,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(VisionC);
                              datoscambioV = double.parse(VisionV);

                              bankname = 'Vision';

                              colorvision = Color.fromRGBO(221, 221, 221, 1);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),

                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('BCP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+bcpC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+bcpV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colorbcp,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(bcpC);
                              datoscambioV = double.parse(bcpV);

                              bankname = 'Bcp';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 1);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Bonanza', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+bonanzaC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+bonanzaV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colorbonanza,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(bonanzaC);
                              datoscambioV = double.parse(bonanzaV);

                              bankname = 'Bonanza';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 1);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Set', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+SetC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+SetV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colorset,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(SetC);
                              datoscambioV = double.parse(SetV);

                              bankname = 'Set';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 1);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Interfiza', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+InterfizaC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+InterfizaV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colorinterfiza,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(InterfizaC);
                              datoscambioV = double.parse(InterfizaV);

                              bankname = 'Interfiza';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 1);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Amambay', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+amambayC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+amambayV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: coloramambay,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(amambayC);
                              datoscambioV = double.parse(amambayV);

                              bankname = 'Amambay';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 1);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('CambiosChaco', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+CambiosChacoC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+CambiosChacoV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colorcambiochaco,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(CambiosChacoC);
                              datoscambioV = double.parse(CambiosChacoV);

                              bankname = 'CambiosChaco';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 1);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('MaxiCambios', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+MaxiCambiosC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+MaxiCambiosV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: colormaxicambio,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(MaxiCambiosC);
                              datoscambioV = double.parse(MaxiCambiosV);

                              bankname = 'MaxiCambios';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 0.5);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 1);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('EuroCambios', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                Text('Compra '+EuroscambioC, style: TextStyle(fontSize: 16),),
                                Text('Venta '+EurocambiasV, style: TextStyle(fontSize: 16),)
                              ],
                            ),
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                color: coloreurocambio,
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              datoscambioC = double.parse(EuroscambioC);
                              datoscambioV = double.parse(EurocambiasV);

                              bankname = 'EuroCambio';

                              colorvision = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbcp = Color.fromRGBO(221, 221, 221, 0.5);
                              colorbonanza = Color.fromRGBO(221, 221, 221, 0.5);
                              colorset = Color.fromRGBO(221, 221, 221, 0.5);
                              coloramambay = Color.fromRGBO(221, 221, 221, 0.5);
                              colorinterfiza = Color.fromRGBO(221, 221, 221, 0.5);
                              coloreurocambio = Color.fromRGBO(221, 221, 221, 1);
                              colorcambiochaco = Color.fromRGBO(221, 221, 221, 0.5);
                              colormaxicambio = Color.fromRGBO(221, 221, 221, 0.5);
                            });
                          },
                        ),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Text('${resultado.toStringAsFixed(0)}', style: TextStyle(fontSize: 20)),
                ),

                Container(
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: 8,),
                          Expanded(child: Text(bankname, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500), maxLines: 1,),),
                          SizedBox(width: 10,),
                          Expanded(child: Text('Compra '+ '${datoscambioC.toStringAsFixed(0)}', style: TextStyle(fontSize: 16),),),
                          //Expanded(child: Text('${datoscambioC.toStringAsFixed(0)}', style: TextStyle(fontSize: 14)),),
                          Expanded(child: Text('Venta '+'${datoscambioV.toStringAsFixed(0)}', style: TextStyle(fontSize: 16),),),
                          //Expanded(child: Text('${datoscambioV.toStringAsFixed(0)}', style: TextStyle(fontSize: 14)),),
                          SizedBox(width: 8,),
                        ],
                      ),

                      Padding(padding: EdgeInsets.only(left: 60,right: 60),
                        child: TextFormField(
                          controller: _dolaracambiar,
                          keyboardType: TextInputType.number,
                          clipBehavior: Clip.antiAlias,
                          maxLength: 20,
                          decoration: InputDecoration(
                              labelText: 'Dolar a cambiar',
                              suffixIcon: Container(
                                child: IconButton(onPressed: () {
                                  setState(() {
                                    String dolarACambiarDouble = _dolaracambiar.text;
                                    double dolaracambiar = double.parse(dolarACambiarDouble);
                                    resultado = datoscambioC * dolaracambiar;
                                  });
                                }, icon: Icon(Icons.check)),
                              )
                          ),
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
