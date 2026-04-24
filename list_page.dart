import 'package:flutter/material.dart';
import 'package:tugas5/models/pertemuan.dart';
import 'package:tugas5/page/pertemuan_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Pertemuan> pertemuan = [
    Pertemuan(title: 'Pertemuan 1', subtitle: 'Pengenalan Android'),
    Pertemuan(title: 'Pertemuan 2', subtitle: 'Widget & Button'),
    Pertemuan(title: 'Pertemuan 3', subtitle: 'Activity & Intent'),
    Pertemuan(title: 'Pertemuan 4', subtitle: 'Toast & AlertDialog'),
    Pertemuan(title: 'Pertemuan 5', subtitle: 'ListView'),
    Pertemuan(title: 'Pertemuan 6', subtitle: 'Checkbox'),
    Pertemuan(title: 'Pertemuan 7', subtitle: 'Radio Button'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 5"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: pertemuan.length,
        itemBuilder: (context, index) {
          final item = pertemuan[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.list),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PertemuanPage(pertemuan: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
