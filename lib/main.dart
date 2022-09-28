import 'package:flutter/material.dart';
import 'package:practice1_layouts/layout1.dart';
import 'package:practice1_layouts/layout2.dart';
import 'package:practice1_layouts/layout3.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Макеты',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const HomePage(),
        '/layout1': (BuildContext context) => const Layout1(),
        '/layout2': (BuildContext context) => const Layout2(),
        '/layout3': (BuildContext context) => const Layout3(),
      }));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Практическая работа №1'),
          backgroundColor: const Color.fromRGBO(205, 253, 254, 1),
          foregroundColor: const Color.fromRGBO(3, 158, 162, 1),
          //centerTitle: true,
        ),
        body: Container(
          color: const Color.fromRGBO(3, 158, 162, 1),
          alignment: Alignment.center,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/layout1');
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45))),
                          fixedSize: MaterialStateProperty.all<Size>(
                              const Size.fromHeight(100)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(205, 253, 254, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(3, 158, 162, 1),
                          )),
                      child: const Text(
                        'Просмотреть макет №1',
                        style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Plus Jakarta Sans'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/layout2');
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45))),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size.fromHeight(100)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(205, 253, 254, 1)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(3, 158, 162, 1)),
                      ),
                      child: const Text(
                        'Просмотреть макет №2',
                        style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Plus Jakarta Sans'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/layout3');
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45))),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size.fromHeight(100)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(205, 253, 254, 1)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(3, 158, 162, 1)),
                      ),
                      child: const Text(
                        'Просмотреть макет №3',
                        style: TextStyle(
                            fontSize: 18.0, fontFamily: 'Plus Jakarta Sans'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
