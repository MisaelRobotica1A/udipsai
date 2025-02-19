import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:logger/logger.dart';

class BluetoothService {
  static final Logger logger = Logger();

  static Future<void> connect(String macAddress) async {
    try {
      BluetoothConnection connection = await BluetoothConnection.toAddress(macAddress);
      logger.i('Conectado a $macAddress');

      connection.input!.listen((data) {
        String receivedData = String.fromCharCodes(data).trim();
        logger.i('Datos recibidos: $receivedData');
      });

    } catch (e) {
      if (kDebugMode) {
        logger.e('Error de conexión: $e');
      }
    }
  }
}
