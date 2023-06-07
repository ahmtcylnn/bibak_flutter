import 'package:bibak_flutter/screens/anasayfa.dart';
import 'package:bibak_flutter/screens/selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YardimseverScreen extends StatefulWidget {
  const YardimseverScreen({super.key});

  @override
  State<YardimseverScreen> createState() => _YardimseverScreenState();
}

class _YardimseverScreenState extends State<YardimseverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  "Bibak",
                  style: GoogleFonts.lobster(
                      fontSize: 48,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "İhtiyaç Olan İller",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Kahramanmaraş',
                  hintText: 'Kahramanmaraş',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 12), // Boyutlandırma yapmak için kullanılır
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: const Text(
                  "Yardıma İhtiyacı Olan İller Burada Gösterilecektir",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Yardım Gönderilecek İl",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Kahramanmaraş',
                  hintText: 'Kahramanmaraş',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 12), // Boyutlandırma yapmak için kullanılır
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: const Text(
                  "Yardımın Gönderileceği İlleri Seçiniz",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Göndereceğiniz Yardım Listesi",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Liste',
                  hintText: 'Göndereceklerinizi Listeleyiniz...',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 12), // Boyutlandırma yapmak için kullanılır
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SelectionScreen())));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Önceki Sayfaya Dön',
                      style: TextStyle(color: Colors.black),
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => Anasayfa())));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Anasayfaya Dön',
                      style: TextStyle(color: Colors.black),
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
