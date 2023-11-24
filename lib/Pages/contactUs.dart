// ignore_for_file: file_names

import 'package:learn/Pages/mailUs.dart';
import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/gestures.dart';

class ContactUs extends StatefulWidget {
  const ContactUs(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        HomePage(widget.setLocale))); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 265,
                  ),
                  child: AutoSizeText(AppLocalizations.of(context)!.contact,
                      style: const TextStyle(
                          color: Color.fromARGB(130, 0, 0, 0), fontSize: 22),
                      maxLines: 1),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Wrap(
              spacing: 40, // to apply margin in the main axis of the wrap
              runSpacing: 10,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/LOGO.png",
                    height: 72,
                    width: 300,
                  )
                ]),
                //END OF LOGO
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        AppLocalizations.of(context)!.inquiry,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 37, 46, 36),
                          fontFamily: 'Open Sans',
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 300,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Info@fathalla-cpa.com',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          MailUs(widget.setLocale)));
                                },
                              style: const TextStyle(
                                color: Color.fromARGB(255, 37, 46, 36),
                                fontFamily: 'Open Sans',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                    ]),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 60,
                        color: const Color.fromARGB(130, 218, 231, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 270,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(AppLocalizations.of(context)!.cairo,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(AppLocalizations.of(context)!.adress,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text(
                                          "2 Extension Abd El Hamid Badawy St. Sheraton Heliopolis. Cairo ",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(AppLocalizations.of(context)!.phone,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text("+2 01113939362 ",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 60,
                        color: const Color.fromARGB(130, 218, 231, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 270,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(AppLocalizations.of(context)!.alex,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(AppLocalizations.of(context)!.adress,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text(
                                          "62 El Geish st. sporting , Alexandria",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(AppLocalizations.of(context)!.phone,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text("+2 03-5931224",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text("+2 03-5931228",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
