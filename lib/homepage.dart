import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(22, 24, 240, 168),
        title: const Text("Results Nepal"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('images/tree.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Readbox(
              "SEE Result",
              "http://see.gov.np/exam/results",
            ),
            Readbox(
              "NEB Result",
              "http://www.neb.gov.np/results",
            ),
            Readbox(
              "IOE Result",
              "https://exam.ioe.edu.np/",
            ),
            Readbox(
              "IOM Result",
              "http://iomexam.edu.np/index.php/exam/results",
            ),
            Readbox(
              "TU Result",
              "https://www.tuexam.edu.np/",
            ),
            Readbox(
              "PU Result",
              "https://puexam.edu.np/index.php/find-results",
            ),
            Readbox(
              "IPO Result",
              "https://iporesult.cdsc.com.np/",
            ),
          ],
        ),
      ),
    );
  }
}

class Readbox extends StatelessWidget {
  final String title;
  final String url;
  const Readbox(this.title, this.url, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(172, 40, 40, 0.692),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
      ),
      onTap: () {
        // ignore: deprecated_member_use
        launch(url);
      },
    );
  }
}
