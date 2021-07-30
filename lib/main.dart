import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SVG Project'),
      ),
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Colors.white, minimumSize: Size(200, 40)),
              icon: Lottie.asset('assets/icons/box.json', width: 40),
              onPressed: () => _mostrarAlert(context, 'Archivar', 'Archivando su información', 'assets/icons/box.json'),
              label: Text('Archivar', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Colors.black87, minimumSize: Size(200, 40)),
              icon: Lottie.asset('assets/icons/adobe.json', width: 40),
              onPressed: () => _mostrarAlert(context, 'Guardar PDF', 'Se está generando su PDF', 'assets/icons/adobe.json'),
              label: Text('Guardar PDF'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Colors.white, minimumSize: Size(200, 40)),
              icon: Lottie.asset('assets/icons/mailbox.json', width: 40),
              onPressed: () => _mostrarAlert(context, 'Nuevo correo', 'Ya te contrataron', 'assets/icons/mailbox.json'),
              label: Text(' Nuevo correo', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      )),
    );
  }
}

void _mostrarAlert(BuildContext context, String title, String content, String routeIcon) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(content),
            SizedBox(height: 20),
            Lottie.asset(routeIcon, width: 40, options: LottieOptions()),
          ],
        ),
        actions: [
          TextButton(
            child: Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop(),
            style: TextButton.styleFrom(primary: Colors.white),
          ),
          TextButton(
            child: Text('Aceptar'),
            onPressed: () => Navigator.of(context).pop(),
            style: TextButton.styleFrom(primary: Colors.white),
          ),
        ],
      );
    },
  );
}
