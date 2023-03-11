import 'package:climpse/hooks/use_user.hook.dart';

dynamic isUserLogged({required int id}) async {
  const defaultFieldValues = {
    'nome': 'Digite seu nome:',
    'cpf': 'Digite seu CPF:',
    'email': 'Digite seu email:',
    'senha': 'Digite sua senha:',
    'sexo': 'Sexo:',
    'celular': 'Número de celular:'
  };

  if (id != 0) {
    dynamic userData = await getUserDetails(id: id);
    defaultFieldValues['nome'] = userData['nome'];
    defaultFieldValues['cpf'] = userData['cpf'];
    defaultFieldValues['email'] = userData['email'];
    defaultFieldValues['senha'] = userData['senha'];
    defaultFieldValues['sexo'] = userData['sexo'];
    defaultFieldValues['celular'] = userData['celular'];
  }
  return defaultFieldValues;
}
