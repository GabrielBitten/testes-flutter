
import 'package:app/pedido.dart';
import 'package:app/produto.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';

void main(){
  
 test('deve adicionar produtos no pedido', (){
      Produto monitor = Produto(10, 'Monitor Dell', 659.90);
      Produto tv = Produto(11, 'TV 90p', 5000.00);

      Pedido pedidoJoao = Pedido('joao');

      pedidoJoao.adicionarProduto(monitor);
      pedidoJoao.adicionarProduto(tv);

     
       expect(pedidoJoao.produtos[0].valor, 659.90);
       expect(pedidoJoao.produtos[0].nome, 'Monitor Dell');

       expect(pedidoJoao.produtos[1].valor, 5000.00);
       expect(pedidoJoao.produtos[1].nome, 'TV 90p');

       pedidoJoao.removerProduto(monitor);
       pedidoJoao.removerProduto(tv);
      

       expect(pedidoJoao.produtos.length,0);
       expect(pedidoJoao.produtos.length,2);
 });
}