const createTable = '''
  CREATE TABLE contact (
    id          INT           NOT NULL PRIMARY KEY,
    nome        VARCHAR(200)  NOT NULL,
    telefone    VARCHAR(16)   NOT NULL,
    email       VARCHAR(150)  NOT NULL,
    url_avatar  VARCHAR(300)  NOT NULL
  )
''';

const insert1 = '''
  INSERT INTO contact (nome, telefone, email, url_avatar)
  values ('LUCIA', '123', 'LUCIA@GUTIERRES.COM.BR', 'https://cdn.iconscout.com/icon/free/png-256/avatar-373-456325.png');
''';

const insert2 = '''
  INSERT INTO contact (nome, telefone, email, url_avatar)
  values ('Alexandre', '123', 'Alexandre@GUTIERRES.COM.BR',  'https://icon-library.com/images/avatar-icon/avatar-icon-6.jpg');
''';

const insert3 = '''
  INSERT INTO contact (nome, telefone, email, url_avatar)
  values ('Davi', '123', 'Davi@GUTIERRES.COM.BR',  'https://icon-library.com/images/avatar-icon/avatar-icon-6.jpg');
''';

const insert4 = '''
  INSERT INTO contact (nome, telefone, email, url_avatar)
  values ('Danilo', '123', 'Danilo@GUTIERRES.COM.BR', 'https://icon-library.com/images/avatar-icon/avatar-icon-6.jpg');
''';
