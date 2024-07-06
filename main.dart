main() {
    
    String variavelNome = 'João';
    print(variavelNome);

    int valorVariavel = 10;
    print(valorVariavel);
    
    bool ehVerdadeiro = true;
    print(ehVerdadeiro);

    int? varExemplo;
    print(varExemplo);

    List<String> listaDePalavras = ['João', 'Vitor'];
    print(listaDePalavras[1]);

    Celular celularDoJoao = Celular('Azul', 5, 0.500, 5.7);
    Celular celularDoZe = Celular('Preto', 8, 0.650, 6);

    print(celularDoJoao.toString());
    print(celularDoZe.toString());
    double resultado = celularDoJoao.valorDoCelular(1000);
    print(resultado);

    Carro mercedes = Carro('Mercedes');
    Carro gol = Carro("gol");

    mercedes._segredo ;

    Joao joao = Joao();
    joao.falar();
    print(joao.falar());

}



// Criando classe

class Pai {
  String falar(){
    return 'girias';
  }
}

class Joao extends Pai {

}

class Carro {
  final String modelo;
  String _segredo = 'Método privado';

  int _valor = 1000;

  int get valorDoCarro => _valor;

  Carro(this.modelo);
}

class Celular { 
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.peso, this.tamanho);

  String toString() {
    return 'Cor: $cor, Quantidade de Processadores: $qtdPros, Tamanho: $tamanho, Peso: $peso g';
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}