import 'package:flutter/material.dart';
import '../services/bluetooth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Control Bluetooth"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 150),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _buildButton("Botón 1", "assets/button1.png", "00:11:22:33:44:55"),
                _buildButton("Botón 2", "assets/button2.png", "00:66:77:88:99:AA"),
                _buildButton("Botón 3", "assets/button3.png", "00:BB:CC:DD:EE:FF"),
                _buildButton("Botón 4", "assets/button4.png", "00:12:34:56:78:90"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, String imagePath, String macAddress) {
    return ElevatedButton(
      onPressed: () {
        BluetoothService.connect(macAddress);
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, width: 50),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
