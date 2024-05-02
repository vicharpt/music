import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vicharpt_2/halaman_detail.dart';
import 'package:vicharpt_2/halaman_tentang.dart';
import 'helper/api.dart';

class HalamanMusic extends StatefulWidget {
  const HalamanMusic({super.key});

  @override
  State<HalamanMusic> createState() => _HalamanMusicState();
}

class _HalamanMusicState extends State<HalamanMusic> {
  TextEditingController search = TextEditingController();
  bool deleteSearch = false;
  List<Map> musics = [
    {
      "img": "https://source.unsplash.com/random/200x200",
      "title": "Ultraman naik haji",
      "artis": "Almos"
    },
    {
      "img": "https://source.unsplash.com/random/300x300",
      "title": "Purkon",
      "artis": "Darman"
    },
    {
      "img": "https://source.unsplash.com/random/400x400",
      "title": "Gadis pake baju",
      "artis": "Nopel"
    },
    {
      "img": "https://source.unsplash.com/random/500x500",
      "title": "Bang iting pergi",
      "artis": "Aldio"
    },
    {
      "img": "https://source.unsplash.com/random/600x600",
      "title": "Pria jatuh sakit",
      "artis": "Jono"
    },
  ];
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
            child: ListView.builder(
              itemCount: musics.length,
              itemBuilder: (context, index) {
                return CardMusic(
                    img: musics[index]["img"],
                    titleSong: musics[index]["title"],
                    artis: musics[index]["artis"]);
              },
            ),
          ),
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
                    child: Image(image: NetworkImage(img!))),
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
