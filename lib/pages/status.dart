import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:band_names/services/socket_service.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Server status ${socketService.serverStatus}")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          // EMITIR un mapa {nombre: 'flutter',mensaje: 'hola desde flutter }
          socketService.socket.emit('emitir-mensaje', {
            "nombre": "hola",
            "mensaje": "hola desde flutter",
          });
        },
      ),
    );
  }
}
