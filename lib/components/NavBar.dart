import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('startaideia.com.br'),
            accountEmail: Text('khris.ramos6@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Image(image: AssetImage("assets/images/profile.png"))
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favoritos'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Amigos'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Compartilhar'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Pliticas'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Sair'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => {FirebaseAuth.instance.signOut()}
          ),
        ],
      ),
    );
  }
}
