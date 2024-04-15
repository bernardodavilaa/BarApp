import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart'; // Importe a biblioteca Flutter Barcode Scanner
import 'package:flutter_qrcode/pages/bill_page.dart'; // Importe a classe BillPage aqui

class QRCodePage extends StatefulWidget {
  final Function(String) onQRCodeScanned; // Função de retorno de chamada

  const QRCodePage({Key? key, required this.onQRCodeScanned}) : super(key: key);

  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  String ticket = '';

  // Função para ler o código QR
  readQRCode() async {
    // Temporariamente definindo o código como '123456789' para fins de teste
    String code = '123456789'; // Remova esta linha após o teste

    // String code = await FlutterBarcodeScanner.scanBarcode(
    //   "#FFFFFF",
    //   "Cancelar",
    //   false,
    //   ScanMode.QR,
    // );

    if (code != '-1') {
      setState(() => ticket = code);

      if (code == '123456789') {
          // Navegar para a tela BillPage se o código QR for igual a '123456789'
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BillPage()),
          );
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (ticket != '')
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'Ticket: $ticket',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ElevatedButton.icon(
              onPressed: readQRCode,
              icon: const Icon(Icons.qr_code),
              label: const Text('Validar'),
            ),
          ],
        ),
      ),
    );
  }
}
