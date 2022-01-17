import 'package:agenda_crud/app/database/sqlite/dao/contato_dao_impl.dart';
import 'package:agenda_crud/app/domain/entities/contato.dart';
import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  ContactList({Key? key}) : super(key: key);

  Future<List<Contato>?> _buscar() async {
    return ContatoDAOImpl().pesquisar();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _buscar(),
        builder: (context, futuro) {
          if (futuro.hasData) {
            List<Contato> lista = futuro.data as List<Contato>;

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
                          AssetImage(contato.urlAvatar.toString()));

                  return ListTile(
                    leading: avatar,
                    title: Text(contato.nome ?? ''),
                    subtitle: Text(contato.telefone ?? ''),
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
