import 'dart:convert';

ScanModel scanModelFromJson(String str) => ScanModel.fromJson(json.decode(str));
String scanModelToJson(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  int id;
  String tipo;
  String valor;

  ScanModel({
    required this.id,
    required this.tipo,
    required this.valor,
  }) {
    if (tipo.contains("http")) {
      tipo = "http";
    } else {
      tipo = "geo";
    }
  }

  //ScanModel.fromJson recibe un objeto Mapa y con eso creara una nueva instancia de esta clase(ScanModel)
  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  //toJson regresa un nuevo mapa tomando la instancia de la clase y la pasa a un objeto tipo Mapa. Muy funcional para trabajar con SQLite
  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}
