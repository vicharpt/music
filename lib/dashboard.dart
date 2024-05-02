import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Vicharpt",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(Icons.close),
            Padding(padding: EdgeInsets.only(right: 20))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image(
                  image: AssetImage('download.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Hello Wolrd!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ),
              Divider(),
              Text(
                "Hello Wolrd!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ),
              Divider(),
              Text(
                "Hello Wolrd!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ),
              Divider(),
              Text(
                "Hello Wolrd!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ),
              Divider(),
              Text(
                "Hello Wolrd!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ),
              Divider(),
              Text(
                "Hello Wolrd!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: MaterialButton(
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {}),
              ),
              Divider()
            ],
          ),
        ));
  }
}
