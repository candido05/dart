void main(List<String> args) {
  
  int? numero = 20;
  // numero = null;

  /*
  if(numero == null) {
    print('numero é null');
  } else {
    print('numero nao é null');
  }
  */

  funcao(numero);

}

void funcao(int? numero){
  if(numero == null) {
    print('numero é null');
  } else {
    print('numero nao é null');
  }
}