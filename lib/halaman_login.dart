import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vicharpt_2/halaman_music.dart';
import 'package:vicharpt_2/halaman_registrasi.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  List<List> users = [
    ["vicharpt", "anjai"],
    ["saipul", "123"],
  ];
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  void submited() {
    for (int i = 0; i < users.length; i++) {
      if (this.username.text != "" && this.password.text != "") {
        if (this.username.text == users[i][0] &&
            this.password.text == users[i][1]) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HalamanMusic()));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("background_log_reg.png"),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Center(
              child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(126, 0, 0, 0),
                  ),
                  width: 270,
                  height: 424,
                  padding: EdgeInsets.fromLTRB(30, 35, 30, 10),
                  child: Material(
                    textStyle: TextStyle(color: Colors.white),
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 15),
                          child: focusInput("Nama Pengguna", "user", username),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 35),
                          child: focusInput("Password", "password", password),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7)),
                          child: MaterialButton(
                            onPressed: () => {submited()},
                            color: Color.fromARGB(254, 52, 114, 235),
                            minWidth: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 18),
                          child: Column(
                            children: [
                              Text("Belum punya akun?"),
                              TextButton(
                                  onPressed: () => {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HalamanRegistrasi()))
                                      },
                                  child: Text(
                                    "registrasi",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}

class focusInput extends StatefulWidget {
  final String label;
  final String icon;
  final TextEditingController controller;
  const focusInput(this.label, this.icon, this.controller);

  @override
  State<focusInput> createState() => _focusInputState();
}

bool _isFocused = false;
bool eye = true;

class _focusInputState extends State<focusInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.icon == "password" ? eye : false,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.white),
        labelText: widget.label,
        prefixIcon: Image(
          image: AssetImage("icons/${widget.icon}.png"),
          width: 15,
          height: 15,
        ),
        suffixIcon: widget.icon == "password"
            ? IconButton(
                onPressed: () => {
                      setState(() {
                        eye = !eye;
                      })
                    },
                icon: Image(
                  image: AssetImage("icons/${eye ? 'eye_of' : 'eye_on'}.png"),
                  width: 22,
                  height: 22,
                ))
            : SizedBox(),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
      ),
      onChanged: (value) {
        // Handle input changes
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onEditingComplete: () {
        setState(() {
          _isFocused = false;
        });
      },
      style: TextStyle(color: Colors.white),
    );
  }
}
