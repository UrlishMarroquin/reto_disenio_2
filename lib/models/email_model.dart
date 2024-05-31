class EmailModel {
  String nombre;
  String asunto;
  String mensaje;
  String hora;
  String archivo;
  String correo;
  int estado;
  bool favorito;

  EmailModel({
    required this.nombre,
    required this.asunto,
    required this.mensaje,
    required this.hora,
    required this.archivo,
    required this.correo,
    required this.estado,
    required this.favorito,
  });
}