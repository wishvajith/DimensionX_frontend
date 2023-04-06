import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'DIMENSION X',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        elevation: 0.1,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 350,
              width: double.infinity,
              child: WebView(
                initialUrl: 'https://app.vectary.com/p/7Rkk09lqFGjKTngQ1jjyYk',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue),
          child: const Center(
              child: Text(
            'Save',
            style: TextStyle(color: Colors.white, fontSize: 28),
          )),
        ),
      ),
    );
  }
}
