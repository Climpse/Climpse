import 'package:climpse/globals/global_variables.dart' as globals;
import 'package:climpse/hooks/use_user.hook.dart';
import 'package:climpse/model/user.model.dart';
import 'package:flutter/material.dart';
import 'package:climpse/constants/images_url.dart' as images;

class PersonalAccountPage extends StatefulWidget {
  const PersonalAccountPage({super.key});

  @override
  State<PersonalAccountPage> createState() => _PersonalAccountPageState();
}

class _PersonalAccountPageState extends State<PersonalAccountPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                Image.network(images.femaleAvatar),
                FutureBuilder<User>(
                  future: getUserDetails(id: globals.globalUserId),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasData) {
                      User userData = snapshot.data!;
                      return ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(userData.nome.toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.lock),
                            title: Text(userData.cpf.toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.email),
                            title: Text(userData.email.toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.password),
                            title: Text(userData.senha.toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.person_outlined),
                            title: Text(userData.sexo.toString()),
                          ),
                          ListTile(
                            leading: const Icon(Icons.phone),
                            title: Text(userData.celular.toString()),
                          ),
                        ],
                      );
                    }
                    return const Text('Carregando informações');
                  },
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit/user');
                    },
                    icon: const Icon(Icons.edit)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
