import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vicharpt_2/halaman_login.dart';

class HalamanRegistrasi extends StatefulWidget {
  const HalamanRegistrasi({super.key});

  @override
  State<HalamanRegistrasi> createState() => _HalamanRegistrasiState();
}

class _HalamanRegistrasiState extends State<HalamanRegistrasi> {
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
                  height: 481.18,
                  padding: EdgeInsets.fromLTRB(30, 35, 30, 10),
                  child: Material(
                    textStyle: TextStyle(color: Colors.white),
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Text(
                          "Registrasi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 10),
                          child: focusInput("Nama Pengguna", "user"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15),
                          child: focusInput("Password", "password"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 35),
                          child: focusInput("Confirm password", "password"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7)),
                          child: MaterialButton(
                            onPressed: () => {},
                            color: Color.fromARGB(254, 52, 114, 235),
                            minWidth: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              "Registrasi",
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
                              Text("Sudah punya akun?"),
                              TextButton(
                                  onPressed: () => {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HalamanLogin()))
                                      },
                                  child: Text(
                                    "login",
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
  const focusInput(this.label, this.icon);

  @override
  State<focusInput> createState() => _focusInputState();
}

bool _isFocused = false;
bool eye = true;

class _focusInputState extends State<focusInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
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
