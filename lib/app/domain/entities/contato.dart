class Contato {
  int? id;
  String? nome;
  String? telefone;
  String? email;
  String? urlAvatar;

  Contato({this.id, this.nome, this.telefone, this.email, this.urlAvatar});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'telefone': telefone,
      'email': email,
      'url_avatar': urlAvatar
    };

    return map;
  }

  Contato.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
    telefone = map['telefone'];
    email = map['email'];
    urlAvatar = map['url_avatar'];
  }
}
