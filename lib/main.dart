import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(body: Container (
        width: double.infinity,
        child: Column(children: [
        SizedBox(height: 70,),
        SizedBox(width: 110, height: 84, child: Placeholder(),),
          SizedBox(height: 20,),
          Text('Введите лолгин в ввиде 10 цифр вашего телефона'),
          SizedBox(height: 20,),
          SizedBox( width: 224,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFeceff1),
                labelText: 'Телефон',
              ),
            ),
          ),
      SizedBox(height: 20,),
      SizedBox( width: 224,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFeceff1),
              labelText: 'Пароль',
            ),
          ),
      ),
          SizedBox(height: 28,),
          SizedBox(width: 154, height: 42,
              child: ElevatedButton(onPressed: null, child: Text('Войти'))),
          SizedBox(height: 62),
          InkWell(child: Text('Регистрация'), onTap: () {}),
          SizedBox(height: 20,),
          InkWell(child: Text('Забыли пароль?') onTrap: () {}),

        ],),
        )
      ),
    );
  }
}
