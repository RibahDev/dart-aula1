void main(){

List<String> lista = ['João', 'Leonardo'];
//Chave, valor
Map<String, int> mapa = {'chave': 17};

print(mapa["chave"]);

//Adicionando valores
mapa.putIfAbsent('novaChave', () => 19);
print(mapa);

mapa['novaChaveDois'] = 20;

print(mapa);

//removendo valor
mapa.remove('novaChave');
print(mapa);

mapa.update('novaChaveDois', (value) => 2024);
print(mapa);

//Iterar sobre o mapa
mapa.forEach((chave, valor) => print('a chave é: $chave, o valor é: $valor'));

//Outra forma
mapa.keys.forEach(print);
mapa.values.forEach(print);
}