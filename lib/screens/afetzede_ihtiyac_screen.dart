import 'package:bibak_flutter/screens/afetzede_screen.dart';
import 'package:bibak_flutter/screens/anasayfa.dart';
import 'package:bibak_flutter/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/colors.dart';

class AfetzedeIhtiyac extends StatefulWidget {
  const AfetzedeIhtiyac({super.key});

  @override
  State<AfetzedeIhtiyac> createState() => _AfetzedeIhtiyacState();
}

class _AfetzedeIhtiyacState extends State<AfetzedeIhtiyac> {
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
                      fontSize: 64,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "İhtiyaçlarınız",
                style: GoogleFonts.montserrat(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'İhtiyaçlarınızı Girin',
                  hintText: 'İhtiyaçlarınızı Girin',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 64,
                      horizontal: 12), // Boyutlandırma yapmak için kullanılır
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Kategori",
                      style: TextStyle(color: Colors.black),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Gönder",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "En Yakın Afet Elçileri",
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1685682160909-61e7f1c2d5c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1161&q=80'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Ara",
                      style: TextStyle(color: Colors.white),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Mesaj Gönder",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1685682160909-61e7f1c2d5c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1161&q=80'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Ara",
                      style: TextStyle(color: Colors.white),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Mesaj Gönder",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => AfetzedeScreen())));
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

class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
