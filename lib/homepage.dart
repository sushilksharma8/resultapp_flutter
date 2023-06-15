import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(192, 29, 31, 30),
        title: const Text("Result Nepal"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 16, 25, 12),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/08/02/17/02/read-1564105_640.jpg"),
                minRadius: 100,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Result Nepal",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Divider(
              color: Color.fromARGB(127, 2, 54, 54),
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: drawerList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(drawerList[index].icon),
                      title: Text(drawerList[index].title),
                    );
                  }),
            ),
            Divider(
              color: Color.fromARGB(127, 2, 54, 54),
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            )
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/res.jpg'), // Replace with your image path
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
            color: Color.fromRGBO(165, 167, 168, 0.329),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            /*  boxShadow: [
              BoxShadow(
                color: Color.fromARGB(40, 158, 158, 158).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            */
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
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
