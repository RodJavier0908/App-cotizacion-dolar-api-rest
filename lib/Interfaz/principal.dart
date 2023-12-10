import 'package:app_cotizacion_dolarpy/Interfaz/comfresponse.dart';
import 'package:app_cotizacion_dolarpy/Interfaz/cotizacion.dart';
import 'package:app_cotizacion_dolarpy/Interfaz/home.dart';
import 'package:app_cotizacion_dolarpy/Interfaz/menu.dart';
import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsive(
          mobil: Row(
            children: [
              Expanded(child: home(), flex: 1,)
            ],
          ),
          tablet: Row(
            children: [

              if(responsive.establet(context))
              Expanded(child: menu(), flex: 2,),
              Expanded(child: home(), flex: 3,),


            ],
          )),
    );
  }
}
class cotizacionresponse extends StatefulWidget {
  const cotizacionresponse({super.key});

  @override
  State<cotizacionresponse> createState() => _cotizacionresponseState();
}

class _cotizacionresponseState extends State<cotizacionresponse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsive(
          mobil: Row(
            children: [
              Expanded(child: home(), flex: 1,)
            ],
          ),
          tablet: Row(
            children: [
              Expanded(child: Container(
                color: Color.fromRGBO(247, 146, 44, 80),
                child: menu(),
              ), flex: 2,),
              Expanded(child: home(), flex: 3,),
            ],
          )),
    );
  }
}

class cambioresponse extends StatefulWidget {
  const cambioresponse({super.key});

  @override
  State<cambioresponse> createState() => _cambioresponseState();
}

class _cambioresponseState extends State<cambioresponse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: responsive(
          mobil: Row(
            children: [
              Expanded(child: cotizacion(), flex: 1,)
            ],
          ),
          tablet: Row(
            children: [
              Expanded(child: Container(
                color: Color.fromRGBO(247, 146, 44, 80),
                child: menu(),
              ), flex: 2,),
              Expanded(child: cotizacion(), flex: 3,),
            ],
          )),
    );
  }
}
