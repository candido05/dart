void main(List<String> args) {
  
  print(Carro.values);
  print([...Carro.values]..sort());
}

enum Carro implements Comparable<Carro>{

  modelY(carroPeso: 2.2),
  modelS(carroPeso: 2.1),
  model3(carroPeso: 1.8),
  modelX(carroPeso: 2.4);

  final double carroPeso;

  const Carro({
    required this.carroPeso,
  });

  @override
  int compareTo(Carro outros) 
  => carroPeso.compareTo(outros.carroPeso,);
}