import 'package:flutter/material.dart';

void main() => runApp(AppBank());
       
       class AppBank extends StatelessWidget {
         @override
         Widget build(BuildContext context) {
           return MaterialApp(
             home: Scaffold(
               body: FormularioTransferencia(),
             ),
           );
         }
       }
       
 class FormularioTransferencia extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Criando Transferencia',)),
       body:Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               style: TextStyle(
                 fontSize: 24.0
               ),
               decoration: InputDecoration(
                 labelText: 'Número da Conta',
                 hintText: '0000',
               ),
               keyboardType: TextInputType.number,
             ),
           ),
                
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               style: TextStyle(
                 fontSize: 24.0
               ),
               decoration: InputDecoration(
                 icon: Icon(Icons.monetization_on),
                 labelText: 'Valor',
                 hintText: '0.00',
               ),
               keyboardType: TextInputType.number,
             ),
           ),
           RaisedButton(
             child: Text('Confirmar'),
           ),
         ],
       ));
   }
 }

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:
             Text('Transferências'),
             ),
          body: Column(
           children: <Widget>[
             
             ItemTransferencia(Transferencia(100, 2000)),
             ItemTransferencia(Transferencia(200, 2000)),
              
           ],
         ),
         floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
              ),
    );
  }

}

class ItemTransferencia extends StatelessWidget{

  final Transferencia _transferencia;

ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Card(
             child: ListTile(
               leading: Icon(Icons.monetization_on),
               title: Text(_transferencia.valor.toString()),
               subtitle: Text(_transferencia.numConta.toString()),
             )
           );
  }

}

class Transferencia {
  final double valor;
  final int numConta;

  Transferencia(this.valor, this.numConta);
}

