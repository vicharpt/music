import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vicharpt_2/halaman_registrasi.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HalamanRegistrasi()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("bakcground_loading.png"),
                    fit: BoxFit.cover)),
          ),
          const Center(
            child: Image(
              image: AssetImage("logo_loading.png"),
              width: 236,
              height: 230,
            ),
          )
        ],
      ),
    );
  }
}
