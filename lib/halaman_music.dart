import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vicharpt_2/halaman_detail.dart';
import 'package:vicharpt_2/halaman_tentang.dart';
import 'package:http/http.dart' as http;

class HalamanMusic extends StatefulWidget {
  const HalamanMusic({super.key});

  @override
  State<HalamanMusic> createState() => _HalamanMusicState();
}

class _HalamanMusicState extends State<HalamanMusic> {
  TextEditingController search = TextEditingController();
  bool deleteSearch = false;

  getMusic() async {
    final response =
        await http.get(Uri.parse("http://laravel-10.my.id/api/music"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 43, 43, 54),
          Color.fromARGB(255, 139, 31, 201),
          Color.fromARGB(255, 8, 34, 179),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(180),
            child: Column(children: [
              AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: const Image(image: AssetImage("vicharpt1.png")),
                actions: [
                  IconButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HalamanTentang()))
                    },
                    icon: const Image(image: AssetImage("icons/about.png")),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Telusuri musik...",
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.search),
                      ),
                      suffixIcon: search.text.length > 0
                          ? IconButton(
                              onPressed: () => {
                                    setState(() {
                                      search.text = "";
                                    })
                                  },
                              icon: const Icon(Icons.close))
                          : const SizedBox(),
                      hintStyle: const TextStyle(color: Colors.black87),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(999))),
                  onChanged: (value) => {setState(() {})},
                  controller: search,
                ),
              ),
              const Divider(
                thickness: 2,
                color: Colors.white,
              )
            ]),
          ),
          body: Container(
              margin: const EdgeInsets.only(top: 15),
              child: FutureBuilder(
                future: getMusic(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return CardMusic(
                            img: snapshot.data[index]["foto_album"],
                            titleSong: snapshot.data[index]["song_title"],
                            artis: snapshot.data[index]["artis"]);
                      },
                    );
                  }
                },
              )),
        ));
  }

  MaterialButton CardMusic({String? img, String? titleSong, String? artis}) {
    return MaterialButton(
        onPressed: () => {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HalamanDetail()))
            },
        child: Column(
          children: [
            ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                textColor: Colors.white,
                title: Text(
                  titleSong!,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  artis!,
                  style: TextStyle(fontSize: 16),
                ),
                leading: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(999)),
                    width: 55,
                    height: 55,
                    child: Image(
                        image: NetworkImage('http://laravel-10.my.id' + img!))),
                trailing: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.play_circle_outlined,
                    color: Colors.white,
                  ),
                )),
            const Divider(
              color: Colors.white,
            ),
          ],
        ));
  }
}
