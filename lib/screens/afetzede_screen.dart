import 'package:bibak_flutter/screens/afetzede_ihtiyac_screen.dart';
import 'package:bibak_flutter/screens/selection_screen.dart';
import 'package:bibak_flutter/utils/colors.dart';
import 'package:bibak_flutter/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AfetzedeScreen extends StatefulWidget {
  const AfetzedeScreen({super.key});

  @override
  State<AfetzedeScreen> createState() => _AfetzedeScreenState();
}

class _AfetzedeScreenState extends State<AfetzedeScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _surrnameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _surrnameController.dispose();
    _nameController.dispose();
    _addressController.dispose();
  }

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
              Center(
                child: const Text(
                  "Bilgileriniz Güncel Mi ?",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              TextFieldInput(
                hintText: 'Adınız',
                textInputType: TextInputType.text,
                textEditingController: _nameController,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Soyadınız',
                textInputType: TextInputType.emailAddress,
                textEditingController: _surrnameController,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Email',
                textInputType: TextInputType.text,
                textEditingController: _emailController,
                isPass: true,
              ),
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Adres',
                textInputType: TextInputType.emailAddress,
                textEditingController: _addressController,
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => AfetzedeIhtiyac())));
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
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
