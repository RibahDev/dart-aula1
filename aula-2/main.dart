void main() async{
   
  //Future, Async e Await

  String nome = 'João';
  Future<String> cepFuture = getCepByName('Rua mariana');
  late String cep;

  //cepFuture.then((result) => cep = result);
  //Await faz com que o código prossiga apenas após concluir a future
  cep = await cepFuture;

  print(cep);


}

//External service
Future<String> getCepByName(String name) {
  //Simulando requisição
  return Future.value('4356465');
}