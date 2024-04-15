import 'package:flutter/material.dart';
import 'package:flutter_qrcode/pages/bill_page.dart'; // Importe a classe BillPage aqui
import 'package:flutter_qrcode/pages/qrcode_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRCode Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      themeMode: ThemeMode.dark,
      home: QRCodePage(onQRCodeScanned: (String code) {
      }),
    );
  }
}
