void main(List<String> args) {
  
  final pessoa = Pessoa(nome: 'Luis', carro: Carrro.teslaModelX);

  switch (pessoa.carro){

    case Carrro.teslaModelX:
      print('${pessoa.nome} tem um Model X');
      break;
    case Carrro.teslaModelY:
      print('${pessoa.nome} tem um Model Y');
      break;
  }
}

class Pessoa {

  final String nome;
  final Carrro carro;

  const Pessoa({
    required this.nome,
    required this.carro,
  });
}

enum Carrro {
  teslaModelX(
    fabricante: 'Tesla',
    modelo: 'Model X',
    ano: 2023,
  ),

  teslaModelY(
    fabricante: 'Tesla',
    modelo: 'Model Y',
    ano: 2022,
  );

  final String fabricante;
  final String modelo;
  final int ano;

  const Carrro({
    required this.fabricante,
    required this.modelo,
    required this.ano,
  });
} 

/*
enum Carro {

  teslaModeloX(
    fabricante: 'Tesla',
    modelo: 'Model X',
    ano: 2023,
  ),

  final String fabricante;
  final String modelo;
  final int ano;

  const Carro({
    required this.fabricante,
    required this.modelo,
    required this.ano,
  });
}
*/

/*
enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });
} 
*/

/* const Carrro({
  required this.fabricante,
  required this.modelo,
  requ ired this.ano,
});*/