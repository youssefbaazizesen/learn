// ignore_for_file: file_names

import 'package:learn/main.dart';
import 'package:flutter/material.dart';

class GermanDesk extends StatefulWidget {
  const GermanDesk({Key? key}) : super(key: key);

  @override
  State<GermanDesk> createState() => _GermanDeskState();
}

class _GermanDeskState extends State<GermanDesk> {
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
                        HomePage((locale) {}))); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Deutsches Büro",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Wrap(
                spacing: 40, // to apply margin in the main axis of the wrap
                runSpacing: 10,

                //Vertical order
                children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/LOGO.png",
                      height: 72,
                      width: 300,
                    )
                  ]),
              const SizedBox(
                height: 25,
              ),
              Wrap(spacing: 45, children: [
                Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Deutsches Büro :',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Fathalla & Co. Deutsches Team ist ein Team von Spezialisten, das deutsche, österreichische und schweizerische Unternehmen beim Aufbau und bei der Entwicklung ihrer Geschäftstätigkeit in Ägypten unterstützt.',
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Unser Team in Ägypten besteht aus muttersprachlichen und kompetenten deutschsprachigen Buchhaltungs-, Lohns- und Steuerexperten. Alle Mitglieder des Deutschen Teams verfügen über umfangreiche Erfahrungen in der Beratung von internationalen Unternehmen, einschließlich Investoren aus dem deutschsprachigen Raum, in den Bereichen Wirtschaftsprüfung, Steuerberatung, Outsourcing, Buchhaltung, Lohnbuchhaltung und Unternehmensberatung.",
                              maxLines: 21,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          "Das zunehmende Interesse deutschsprachiger Unternehmen an unseren Dienstleistungen und das Bewusstsein, dass deutsche, österreichische und schweizerische Unternehmen unter den ausländischen Investoren in Ägypten eine führende Rolle spielen, haben uns veranlasst, innerhalb unserer Struktur ein Deutsches Team einzurichten, dessen Mitglieder fließend Deutsch sprechen und folgende Dienstleistungen anbieten:",
                          maxLines: 16,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•Beratung zu allen Arten von Steuern und verschiedenen Steuerfragen (Körperschaftssteuer, Mehrwertsteuer, Lohnsteuer, ...)",
                              maxLines: 18,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rechnungswesen und Buchhaltung',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•Wirtschaftsprüfung",
                              maxLines: 18,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Outsourcing (Lohnabrechnung, Rechnungswesen und Buchhaltung, Steuern, IT-Dienstleistungen, usw.)",
                              maxLines: 18,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                ),
              ])
            ])));
  }
}
