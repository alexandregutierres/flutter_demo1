import 'package:agenda_crud/app/database/sqlite/conexao.dart';
import 'package:agenda_crud/app/domain/entities/contato.dart';
import 'package:agenda_crud/app/domain/interfaces/contato_dao.dart';
import 'package:sqflite/sqflite.dart';

class ContatoDAOImpl implements ContatoDAO {
  @override
  excluir(int id) async {
    Database _db = await Conexao.instance.database;
    var sql = 'DELETE FROM contato WHERE id = ?';
    _db.rawDelete(sql, [id]);
  }

  @override
  Future<List<Contato>?> pesquisar() async {
    Database _db = await Conexao.instance.database;

    var resultado = await _db.query('contato');

    List<Contato> lista = resultado.map((c) => Contato.fromMap(c)).toList();

    return lista;
  }

  @override
  salvar(Contato contato) async {
    Database _db = await Conexao.instance.database;
    var sql = '';
    if (contato.id == null) {
      sql =
          "INSERT INTO contato (nome, telefone, email, url_avatar) values (?, ?, ?, ?);";
      _db.rawInsert(sql,
          [contato.nome, contato.telefone, contato.email, contato.urlAvatar]);
    } else {
      sql =
          "UPDATE contato SET nome = ?, telefone = ?, email = ?, url_avatar = ?) WHERE id = ?";
      _db.rawUpdate(sql, [
        contato.nome,
        contato.telefone,
        contato.email,
        contato.urlAvatar,
        contato.id
      ]);
    }
  }
}
