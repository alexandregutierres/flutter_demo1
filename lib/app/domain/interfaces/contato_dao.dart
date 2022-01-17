import 'package:agenda_crud/app/domain/entities/contato.dart';

abstract class ContatoDAO {
  salvar(Contato contato);

  excluir(int id);

  Future<List<Contato>?> pesquisar();
}
