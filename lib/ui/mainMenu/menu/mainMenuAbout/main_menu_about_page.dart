import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MainMenuAboutPage extends StatefulWidget {
  const MainMenuAboutPage({Key? key}) : super(key: key);

  @override
  State<MainMenuAboutPage> createState() => _MainMenuAboutPageState();
}

class _MainMenuAboutPageState extends State<MainMenuAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "Created and Organized By",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                "Beny Octofryana Yousca Marpaung\n"
                "Hutrialya Rifa Mudrikah\n"
                "Indriyanti Br Simarmata\n"
                "Al Febriliandi\n"
                "Arif Al Farisyi\n"
                "Muhammad Luthfiandi Azhar\n"
                "Dwira Nirfalini Aulia\n"
                "Anthoni Veery Mardianta\n"
                "Nurlisa Ginting\n",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Divider(
                height: 1,
              ),
              SizedBox(height: 20),
              Text(
                "Pelaksanaan Penelitian TALENTA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Universitas Sumatera Utara",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Nomor: 401/UN5.2.3.1/PPM/KP-TALENTA/2022",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
