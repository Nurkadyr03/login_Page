import 'package:flut_10/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  String login = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LoginPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 160,
            width: 160,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIT_YnQsFBI3hSj3sYJiL5u4cjFb6dkKW-8kOgV9GF1YUFlS6LX5BPLv0YEOdoDhMpLjw&usqp=CAU'),
              ),
              color: Color.fromARGB(255, 78, 209, 174),
              borderRadius: BorderRadius.circular(120),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: TextField(
              onChanged: (log) {
                login = log;
                print(login);
                print(password);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                suffixIcon: Icon(Icons.account_circle),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(9.0),
            child: TextField(
              onChanged: (pass) {
                password = pass;
                print(login);
                print(password);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'PassWord',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (login == 'kurs1' && password == '123') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
                print('tuura');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Логининиз же поролунуз туура эмес!'),
                  ),
                );
              }
            },
            child: Text('кируу'),
          ),
        ],
      ),
    );
  }
}
