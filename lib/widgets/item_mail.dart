import 'package:flutter/material.dart';
import 'package:reto_disenio_2/constants/constants.dart';

class ItemEmail extends StatelessWidget {
  String nombre;
  String asunto;
  String mensaje;
  String hora;
  String archivo;
  String correo;
  int estado;
  bool favorito;
  VoidCallback funcionElegido;

  ItemEmail({
    required this.nombre,
    required this.asunto,
    required this.mensaje,
    required this.hora,
    required this.archivo,
    required this.correo,
    required this.estado,
    required this.favorito,
    required this.funcionElegido,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
          onTap: () {
            funcionElegido();
      },
      child: Container(
      padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colorElemento,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Icon(
                      Icons.circle,
                      size: 12,
                      color: colorEstadoAct,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 6),
              Expanded(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nombre,
                        style: textoTitulo,
                      ),
                      Text(hora),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text(
                        asunto,
                        style: textoSubtitulo,
                      ),
                      const SizedBox(height: 7),
                      Text(
                        mensaje,
                        style: textoMensaje,
                      ),
                      const SizedBox(height: 7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: colorFondo,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                              child: Row(
                                children: [
                                  const Icon(Icons.attach_email_sharp),
                                  const SizedBox(width: 4),
                                  Text(
                                    archivo,
                                    style: textoArchivo,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(correo),
                          const IconButton(
                            icon: Icon(
                              Icons.star_sharp,
                              color: colorFavorito,
                            ),
                            onPressed: null,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}