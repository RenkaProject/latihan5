import 'package:flutter/material.dart';
import 'package:tugas5/models/pertemuan.dart';

class PertemuanPage extends StatelessWidget {
  final Pertemuan pertemuan;

  const PertemuanPage({Key? key, required this.pertemuan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pertemuan.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          pertemuan.subtitle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
