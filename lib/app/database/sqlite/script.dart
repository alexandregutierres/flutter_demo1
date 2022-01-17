const CREATE_TABLE = '''
  CREATE TABLE contato (
    id          INTEGER   NOT NULL,
    nome        TEXT      NOT NULL,
    telefone    TEXT      NOT NULL,
    email       TEXT      NOT NULL,
    url_avatar  TEXT      NOT NULL,
    PRIMARY KEY("id" AUTOINCREMENT)
  );
''';

const INSERT1 = '''
  INSERT INTO contato (nome, telefone, email, url_avatar)
  values ('LUCIA', '123', 'LUCIA@GUTIERRES.COM.BR', 'assets/imagens/user_f.png');
''';

const INSERT2 = '''
  INSERT INTO contato (nome, telefone, email, url_avatar)
  values ('Alexandre', '123', 'Alexandre@GUTIERRES.COM.BR',  'assets/imagens/user_m.png');
''';

const INSERT3 = '''
  INSERT INTO contato (nome, telefone, email, url_avatar)
  values ('Davi', '123', 'Davi@GUTIERRES.COM.BR',  'assets/imagens/user_m.png');
''';

const INSERT4 = '''
  INSERT INTO contato (nome, telefone, email, url_avatar)
  values ('Danilo', '123', 'Danilo@GUTIERRES.COM.BR', 'assets/imagens/user_m.png');
''';
