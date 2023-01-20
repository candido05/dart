void main(List<String> args) {
  
  final pai = MembroFamilia(nome: 'Jose');
  final mae = MembroFamilia(nome: 'Elba');
  final familia = pai + mae;
  print(familia);
}

class MembroFamilia {

  final String nome;

  const MembroFamilia({required this.nome});

  @override
  String toString() => 'Membro da familia, nome: $nome';
}

class Familia {

  final List<MembroFamilia> membro;

  const Familia({required this.membro});

  
  @override
  String toString() => 'Membros da familia, membros: $membro';
}

extension DaFamilia on MembroFamilia {

  Familia operator + (MembroFamilia other) => Familia(
        membro: [this, other],
      );
}