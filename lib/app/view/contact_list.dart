import 'package:agenda_crud/app/database/script.dart';
import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactList extends StatelessWidget {
  //const ContactList({Key? key}) : super(key: key);

  final lista = [
    {
      'nome': 'Lucia',
      'telefone': '1234',
      'avatar':
          'https://cdn.iconscout.com/icon/free/png-256/avatar-373-456325.png'
    },
    {
      'nome': 'Alexandre',
      'telefone': '34232',
      'avatar': 'https://icon-library.com/images/avatar-icon/avatar-icon-6.jpg'
    },
    {
      'nome': 'Davi',
      'telefone': '(11)98394343',
      'avatar': 'https://icon-library.com/images/avatar-icon/avatar-icon-6.jpg'
    },
    {
      'nome': 'Danilo',
      'telefone': '23423423',
      'avatar': 'https://icon-library.com/images/avatar-icon/avatar-icon-6.jpg'
    },
  ];

  Future<List<Map<String, dynamic>>> _buscar() async {
    String path = join(await getDatabasesPath(), 'contatos');
    Database db = await openDatabase(path, version: 1, onCreate: (db, v) {
      db.execute(createTable);
      db.execute(insert1);
      db.execute(insert2);
      db.execute(insert3);
    });

    return db.query('contact');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            var lista = futuro.data as List;

            return Scaffold(
              appBar: AppBar(
                title: const Text('Lista de Contatos'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      Navigator.of(context).pushNamed(MyApp.ROTA_CONTACT_FORM);
                    },
                  )
                ],
              ),
              body: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, i) {
                  var contato = lista[i];

                  var avatar = CircleAvatar(
                      backgroundImage:
                          NetworkImage(contato['url_avatar'] ?? ''));

                  return ListTile(
                    leading: avatar,
                    title: Text(contato['nome'] ?? ''),
                    subtitle: Text(contato['telefone'] ?? ''),
                    trailing: Container(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.edit)),
                          IconButton(onPressed: null, icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Scaffold();
          }
        });
  }
}
