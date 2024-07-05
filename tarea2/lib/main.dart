import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea1 Wai Piu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cuenta de Google',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: ListTile(
                trailing: Image.asset('assets/azul.png', width: 50, height: 50),
                title: Text('Tu cuenta está protegida'),
                subtitle: Text('La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.'),
                onTap: () {}, // No hace nada al ser presionado
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                trailing: Image.asset('assets/verde.png', width: 50, height: 50),
                title: Text('Verificación de privacidad'),
                subtitle: Text('Elige la configuración de privacidad indicada para ti con esta guía paso a paso.'),
                onTap: () {}, // No hace nada al ser presionado
              ),
            ),
            SizedBox(height: 20),
            Text(
              '¿Buscas otra informacion?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Buscar en la Cuenta de Google'),
              onTap: () {}, // No hace nada al ser presionado
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Ver las opciones de ayuda'),
              onTap: () {}, // No hace nada al ser presionado
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Enviar comentarios'),
              onTap: () {}, // No hace nada al ser presionado
            ),
            SizedBox(height: 20),
            Text(
              'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 10),
            Text(
              'Más información',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
