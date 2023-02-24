import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final a = TextEditingController();
final b = TextEditingController();
final c = TextEditingController();
String resul ="";


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultando tipo de triangulo',
      home: MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  get fieldText => null;

  @override
  
  
  void triangulo() {
    if(double.parse(a.text)==double.parse(b.text)&&double.parse(b.text)==double.parse(c.text)){
      resul = "Trapecio";
       }
    else  if(double.parse(a.text)==double.parse(b.text)||double.parse(a.text)==double.parse(c.text)||double.parse(b.text)==double.parse(c.text)){
      resul = "Isoceles";
       }
       else  if(double.parse(a.text)!=double.parse(b.text)||double.parse(a.text)!=double.parse(c.text)||double.parse(c.text)!=double.parse(b.text)){
      resul = "Escaleno";
       }
       showDialog(context: context, builder: (context){
            return  AlertDialog(
              title: Text("Tipo de triangulo"),
              content: Text("El triangulo es: $resul"),
            );
          });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultando tipo de triangulo'),
      ),
      body:Padding(
        
        padding: const EdgeInsets.all(20),
        child: Column(
          
          children:[
            
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor del lado a'
              ),
              controller:a, 
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor del lado b'
              ),
              controller: b,
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el valor del lado c'
              ),
              controller: c,
              keyboardType: TextInputType.number,
            )
          ],
            
          ),
      ),
      
    floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          triangulo();
          a.clear();
          b.clear();
          c.clear();
        },
        label: const Text('Calcular'),
        backgroundColor: Colors.indigoAccent,
      ),
  );
  }
}