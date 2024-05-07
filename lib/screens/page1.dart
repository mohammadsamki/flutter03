import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            child: Image.asset('assets/images/image2.png'),
          ),
          Container(
            child: Text(
              'Title',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              'subTitle',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    // primary: const Color.fromRGBO(100, 100, 100, 0.9),
                    backgroundColor: Color.fromARGB(255, 164, 34, 220),
                    // onPrimary: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text('SIGN UP'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    // primary: const Color.fromRGBO(100, 100, 100, 0.9),
                    backgroundColor: Colors.white,
                    // onPrimary: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
