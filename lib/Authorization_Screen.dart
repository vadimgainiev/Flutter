import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(3, 158, 162, 1),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 80.0, right: 20.0, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image(
                      image: AssetImage('assets/medinow_logo.png'),
                      width: 185.0,
                      height: 35.0),
                ),
                const Text(
                  'Meditate With Us!',
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                    color: Colors.white, // light
                    // italic
                  ),
                ),
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            fixedSize: MaterialStateProperty.all<Size>(
                                const Size.fromHeight(50)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        child: const Text('Sign In With Apple',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.black,
                            )),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            fixedSize: MaterialStateProperty.all<Size>(
                                const Size.fromHeight(50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(205, 253, 254, 1))),
                        child: const Text('Continue with Email or Phone',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.black,
                            )),
                      ),
                    )),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue With Google',
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const Image(
                    image: AssetImage('assets/medinow_meditate.png'),
                    fit: BoxFit.fill,
                    width: 400),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
