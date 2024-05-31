import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constants/constants.dart';

class PaginaDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: colorFondo,
      appBar: AppBar(
        //backgroundColor: colorFondo,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: colorElemento,
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_sharp,
                      color: colorIcono,
                      size: 30,
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      color: colorIcono,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('assets/images/icono01.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Malvin Sherman",
                                style: textoTitulo,
                              ),
                              Text(
                                "correo01@gmail.com",
                                style: textoSubtitulo,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("10:30 am"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  children: [
                    Text(
                      "Fonts, Mockups & Templates",
                      style: textoTitulo,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Column(
                  children: [
                    Text(
                      "Hi Jhonson,\n\nIts Friday and time for some free products! Here are the latest freebies to arrive on our sites. Join Plus for Instant Access to 264 Fonts and Designs worth 2.874 dolars with Commercial Use. \n\nThese HUGE discounts! There are limited time only bundles once the timers his zero, they go back to full price.",
                      style: textoMensaje,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  children: [
                    Text(
                      "Read More",
                      style: textEnlace,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: colorFondo,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/fichero.png',
                              width: 45,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2 File Attachment",
                                    style: textoTitulo,
                                  ),
                                  Text(
                                    "5.6 mb",
                                    style: textoSubtitulo,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            Icon(
                              Icons.download_sharp,
                              color: colorElemento,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.reply_sharp,
                      color: colorIcono,
                      size: 25,
                    ),
                    Icon(
                      Icons.delete_sharp,
                      color: colorIcono,
                      size: 25,
                    ),
                    Icon(
                      Icons.star_sharp,
                      color: colorFavorito,
                      size: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}