class Vehicle {
  int id;
  String placa;
  String marca;
  String nome;
  String cor;
  double km;
  int ano;
  String tipo;
  double valorDiaria;
  DateTime dataLocacaoInicial;
  DateTime dataLocacaoFinal;
  bool status;
  int locatario;

  Vehicle({
    required this.id,
    required this.placa,
    required this.marca,
    required this.nome,
    required this.cor,
    required this.km,
    required this.ano,
    required this.tipo,
    required this.valorDiaria,
    required this.dataLocacaoInicial,
    required this.dataLocacaoFinal,
    required this.status,
    required this.locatario,
  });
}
