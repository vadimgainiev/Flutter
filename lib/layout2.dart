import 'package:flutter/material.dart';

class Layout2 extends StatefulWidget {
  const Layout2({Key? key}) : super(key: key);

  @override
  State<Layout2> createState() => _Layout2State();
}

class _Layout2State extends State<Layout2> {
  List<Session> sessions1 = [
    Session('The Sleep Hour', Image.asset('assets/the_sleep_hour.png'),
        'Ashna Mukherjee', '3 Sessions'),
    Session('Relax with Me', Image.asset('assets/relax_with_me.png'),
        'Amanda James', '3 Sessions'),
  ];

  List<Session> sessions2 = [
    Session(
        'Easy on the Mission',
        Image.asset('assets/easy_on_the_mission.png'),
        'Peter Mach',
        '3 Sessions'),
    Session('Sun and Energy', Image.asset('assets/sun_and_energy.png'),
        'Michaek Hiu', '5 minutes')
  ];

  List<SessionGenre> sessions3 = [
    SessionGenre('All', Colors.white, const Color.fromRGBO(3, 158, 162, 1)),
    SessionGenre('Bible In a Year', const Color.fromRGBO(3, 158, 162, 1),
        const Color.fromRGBO(205, 253, 254, 1)),
    SessionGenre('Dailies', const Color.fromRGBO(3, 158, 162, 1),
        const Color.fromRGBO(205, 253, 254, 1)),
    SessionGenre('Minutes', const Color.fromRGBO(3, 158, 162, 1),
        const Color.fromRGBO(205, 253, 254, 1)),
    SessionGenre('November', const Color.fromRGBO(3, 158, 162, 1),
        const Color.fromRGBO(205, 253, 254, 1)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                        flex: 3,
                        child: Text('Meditate',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 22.0,
                              color: Colors.black,
                            ))),
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: Image(
                          alignment: Alignment.centerRight,
                          image: AssetImage('assets/search.png')),
                    ),
                  ],
                ),
              ),
              Container(
                  color: Colors.black.withOpacity(0.2),
                  width: double.infinity,
                  height: 1),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 20.0),
                  child: Row(
                    children: [
                      ...sessions3.map((s3) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: s3.backgroundColor,
                                    foregroundColor: s3.fontColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(45.0),
                                    ),
                                    minimumSize: const Size(45, 45),
                                  ),
                                  child: Text(s3.title,
                                      style: const TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.0,
                                      ))),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(242, 201, 76, 1),
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: const Image(
                              //fit: BoxFit.fill,
                              width: double.infinity,
                              height: 210,
                              image: AssetImage('assets/a_song_of_moon.png'),
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text(
                                    'A Song Of Moon',
                                    style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.0,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text('Start with the Basics',
                                      style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16.0,
                                          color: Colors.black)),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Image(
                                          height: 15,
                                          image:
                                              AssetImage('assets/heart.png')),
                                      Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text('9 Sessions',
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.0,
                                                    color: Colors.black
                                                        .withOpacity(0.5))),
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text('Start >',
                                            style: TextStyle(
                                                fontFamily: 'Plus Jakarta Sans',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.0,
                                                color: Colors.black
                                                    .withOpacity(0.5))),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                ],
                              )),
                        ])),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ...sessions1.map((s1) {
                          return Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(155, 160)),
                                  maximumSize: MaterialStateProperty.all<Size>(
                                      const Size(155, 180)),
                                ),
                                child: Column(
                                  children: [
                                    Container(child: s1.preview),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 10),
                                            Text(
                                              s1.title,
                                              style: const TextStyle(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16.0,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(s1.author,
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 13.0,
                                                    color: Colors.black
                                                        .withOpacity(0.5))),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0),
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Row(
                                                  children: [
                                                    const Image(
                                                        height: 10,
                                                        image: AssetImage(
                                                            'assets/heart.png')),
                                                    Expanded(
                                                        flex: 3,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5),
                                                          child: Text(
                                                              s1.content,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      12.0,
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.5))),
                                                        )),
                                                    Text('Start >',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.0,
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.5)))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 10)),
                            ],
                          );
                        }),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        ...sessions2.map((s2) {
                          return Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(155, 160)),
                                  maximumSize: MaterialStateProperty.all<Size>(
                                      const Size(155, 180)),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(child: s2.preview),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 10),
                                            Text(
                                              s2.title,
                                              style: const TextStyle(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16.0,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(s2.author,
                                                style: TextStyle(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 13.0,
                                                    color: Colors.black
                                                        .withOpacity(0.5))),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0),
                                              child: Row(
                                                children: [
                                                  const Image(
                                                      height: 10,
                                                      image: AssetImage(
                                                          'assets/heart.png')),
                                                  Expanded(
                                                      flex: 3,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Text(s2.content,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12.0,
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.5))),
                                                      )),
                                                  Text('Start >',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12.0,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.5)))
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 10)),
                            ],
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Session {
  Session(this.title, this.preview, this.author, this.content);

  String title;
  Image preview;
  String author;
  String content;
}

class SessionGenre {
  SessionGenre(this.title, this.fontColor, this.backgroundColor);

  String title;
  Color fontColor;
  Color backgroundColor;
}
