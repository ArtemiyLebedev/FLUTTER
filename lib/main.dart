import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const bordereStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(color: const Color(0xffa7cfea), width: 2));

    const linkTextStyle = TextStyle(fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    return MaterialApp(
      home:Scaffold(
          body: Container (
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/SkyFON1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 50),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 70,),
                  SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dartLOGO.png'),),),
                  SizedBox(height: 23,),
                  Text('Введите логин в ввиде 10 цифр вашего телефона',
                    style:TextStyle(fontSize: 16, color:
                    Color.fromRGBO(66, 65, 65, 0.6)),),
                  SizedBox(height: 20,),
                  const TextField(
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Color(0xffeceff1),
                     enabledBorder: bordereStyle,
                     focusedBorder: bordereStyle,
                     labelText: 'Телефон',
                   ),
                  ),
                  SizedBox(height: 20,),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: bordereStyle,
                      focusedBorder: bordereStyle,
                      labelText: 'Пароль',
                    ),
                  ),
                  SizedBox(height: 28,),
                  SizedBox(width: 254, height: 42, child:
                  ElevatedButton(onPressed: () {},
                    child: Text('Войти'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 32),
                  InkWell(
                      child: const Text('Регистрация',
                      style: linkTextStyle), onTap: () {}),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        child: const Text('Забыли пароль?',style: linkTextStyle),
                        onTap: () {}),
                  )],
                ),
              ),
          )));
  }
}
