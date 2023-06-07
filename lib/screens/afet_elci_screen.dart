import 'package:bibak_flutter/screens/afetzede_ihtiyac_screen.dart';
import 'package:bibak_flutter/screens/anasayfa.dart';
import 'package:bibak_flutter/screens/selection_screen.dart';
import 'package:bibak_flutter/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AfetElciScreen extends StatefulWidget {
  const AfetElciScreen({super.key});

  @override
  State<AfetElciScreen> createState() => _AfetElciScreenState();
}

class _AfetElciScreenState extends State<AfetElciScreen> {
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
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  "Bibak",
                  style: GoogleFonts.lobster(
                      fontSize: 64,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: const Text(
                  "Kimliğinizi Doğrulayınız",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            url: 'https://giris.turkiye.gov.tr/Giris/gir'),
                      ));
                },
                child: Container(
                  child: const Text(
                    'E-Devlet ile Doğrula',
                    style: TextStyle(color: Colors.white),
                  ),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: redColor),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: const Text(
                  "Gizlilik Politikası...",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WebViewPage(
                            url: 'https://www.afad.gov.tr/il-mudurlukleri'),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    child: const Text(
                      'AFAD İle Doğrulama',
                      style: TextStyle(color: Colors.white),
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.black, // Sınırların siyah olması için
                        width: 1.0, // Sınır kalınlığı
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: const Text(
                  "Bölgenizdeki AFAD Görevlileri tarafından teyit edilirsiniz.",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: const Text(
                  "İki doğrulamayı da yaparsanız teyit oranınız artacaktır",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
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
                      'Önceki Sayfa',
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
                      'Devam',
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
                height: 96,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
