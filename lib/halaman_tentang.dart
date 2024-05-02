import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vicharpt_2/halaman_music.dart';

class HalamanTentang extends StatefulWidget {
  const HalamanTentang({super.key});

  @override
  State<HalamanTentang> createState() => _HalamanTentangState();
}

class _HalamanTentangState extends State<HalamanTentang> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("halaman_about.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () => {},
              icon: IconButton(
                  onPressed: () => {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HalamanMusic()))
                      },
                  icon: Image(image: AssetImage("icons/back2.png")))),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Image(
                  image: AssetImage("vicharpt2.png"),
                )),
            Container(
              margin: EdgeInsets.only(bottom: 24),
              child: Image(
                image: AssetImage("logo_tentang.png"),
              ),
              width: 150,
              height: 150,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Text(
                  "versi 1.0",
                  style: TextStyle(fontSize: 20),
                )),
            Container(
                margin: EdgeInsets.only(bottom: 24),
                child: Image(
                  image: AssetImage("copyright.png"),
                )),
          ],
        )),
      ),
    );
  }
}
