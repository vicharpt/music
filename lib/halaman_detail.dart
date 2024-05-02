import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vicharpt_2/halaman_music.dart';

class HalamanDetail extends StatefulWidget {
  const HalamanDetail({super.key});

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 151, 24, 119),
          Color.fromARGB(255, 192, 57, 17),
          Color.fromARGB(255, 209, 66, 0),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: ButtonIcon("back1", link: true, page: HalamanMusic()),
            title: Text(
              "Vicharpt",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            actions: [ButtonIcon("like"), ButtonIcon("download")],
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Align(
                        child: Column(
                      children: [
                        Text(
                          "Judul",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Artis",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 130, bottom: 155),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment(1, 0.75),
                child: ButtonIcon("music_play2"),
              ),
            ],
          ),
        ));
  }

  IconButton ButtonIcon(String icon, {bool link = false, Widget? page}) {
    return IconButton(
        onPressed: () => {
              link
                  ? Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => page!))
                  : ''
            },
        icon: Image(image: AssetImage("icons/${icon}.png")));
  }
}
