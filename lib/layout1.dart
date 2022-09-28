import 'package:flutter/material.dart';

class Layout1 extends StatefulWidget {
  const Layout1({Key? key}) : super(key: key);

  @override
  State<Layout1> createState() => _Layout1State();
}

class _Layout1State extends State<Layout1> {
  List<Session> sessions = [
    Session('Sweet Memories', Colors.blue),
    Session('A Day Dream', const Color.fromRGBO(3, 158, 162, 1)),
    Session('Sweet Memories', Colors.orange)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 201, 76, 1),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Image.asset('assets/mind_deep_relax.png'),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Peter Mach',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Mind Deep Relax',
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Join the Community as we prepare over 33 days to relax '
                    'and feel joy with the mind and happiness session across'
                    ' the World.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(3, 158, 162, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15,
                          height: 15,
                          child: Image.asset('assets/play.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                        ),
                        const Text('Play Next Session',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.0,
                              color: Colors.white,
                            )),
                      ],
                    )),
              ),
            ),
            ...sessions.map((session) {
              return Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  session.iconColor),
                              minimumSize: MaterialStateProperty.all<Size>(
                                  const Size(50, 50))),
                          child: SizedBox(
                            height: 15,
                            width: 15,
                            child: Image.asset('assets/play.png'),
                          )),
                      const Padding(padding: EdgeInsets.only(left: 20)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            session.title,
                            style: const TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0,
                            ),
                          ),
                          Text(
                            session.date,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0),
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        alignment: Alignment.centerRight,
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz_rounded),
                        color: Colors.black.withOpacity(0.2),
                        iconSize: 30.0,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                        height: 1,
                        width: double.infinity,
                        color: const Color.fromRGBO(237, 237, 237, 1)),
                  ),
                ],
              );
            })
          ]),
        ),
      ),
    ));
  }
}

class Session {
  Session(this.title, this.iconColor);

  String title;
  String date = 'December 29 Pre-Launch';
  Color iconColor;
}
