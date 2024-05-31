import 'package:flutter/material.dart';
import 'package:reto_disenio_2/models/email_model.dart';
import 'package:reto_disenio_2/constants/constants.dart';
import 'package:reto_disenio_2/widgets/item_mail.dart';
import 'package:reto_disenio_2/pages/pagina_dos.dart';

class PaginaUno extends StatefulWidget {
    @override
  State<PaginaUno> createState() => _PaginaUno();
}

class _PaginaUno extends State<PaginaUno> {

    List<EmailModel> emailList = [
    EmailModel(
      nombre: 'Malvin Sherman',
      asunto: 'Fonts, Mockups & Templates',
      mensaje: 'Its Friday and time for some Free products! Here are the latest free to arrive on our sites.',
      hora: '10:30 am',
      archivo: '2 files',
      correo: 'correo01@gmail.com',
      estado: 1,
      favorito: true,
    ),
    EmailModel(
      nombre: 'Alvert Colinson',
      asunto: 'Finished the part of UX',
      mensaje: 'Hey. I have finished the part of UX, Now you can check the file attachment.',
      hora: '9:30 am',
      archivo: '1 file',
      correo: 'correo02@gmail.com',
      estado: 2,
      favorito: false,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: const Icon( 
          Icons.sort_sharp, 
          color: colorIconAppBar, 
        ), 
        title: const Center(
          child: Text(
            "Email",
            style: textoBar,
          ),
        ),
        actions: const [ 
          Padding( 
            padding: EdgeInsets.only( 
              left: 10, 
              right: 10, 
            ), 
            child: Icon( 
              Icons.search_sharp, 
              color: colorIconAppBar, 
            ), 
          ), 
        ],
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {}, 
                style: TextButton.styleFrom(textStyle: textoAct),
                child: const Text('Inbox'),
              ),
              TextButton(
                onPressed: null,
                style: TextButton.styleFrom(textStyle: textoIna),
                child: const Text('Sent'),
              ),
              TextButton(
                onPressed: null,
                style: TextButton.styleFrom(textStyle: textoIna),
                child: const Text('Draft'),
              ),
            ],
          ),

          ...emailList.map(
            (e) => ItemEmail(
              nombre: e.nombre,
              asunto: e.asunto,
              mensaje: e.mensaje,
              hora: e.hora,
              archivo: e.archivo,
              correo: e.correo,
              estado: e.estado,
              favorito: e.favorito,
              funcionElegido: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaginaDos()));
              },
            ),
          ),




        ],
      ),



    );
  }
}