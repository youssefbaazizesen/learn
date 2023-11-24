// ignore_for_file: use_key_in_widget_constructors

import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import './Main/TypesComp/joint_stock.dart';
import './Main/TypesComp/llc.dart';
import './Main/TypesComp/oneperson_comp.dart';
import './Main/TypesComp/representative_comp.dart';
import './Main/TypesComp/foreign_comp.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CompTypes extends StatefulWidget {
  const CompTypes(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;
  @override
  State<CompTypes> createState() => _CompTypes();
}

class _CompTypes extends State<CompTypes> {
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
              children: [
                AutoSizeText(
                  AppLocalizations.of(context)!.company_types,
                  style: const TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 18),
                ),
                const SizedBox(width: 15)
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
              /*  Center(
                child: Card(
                    elevation: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      //MAKE CARD CLICKABLE
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const HowtoStart())); //NAME OF TARGET CLASS
                        });
                      },
                      child: SizedBox(
                        width: 360,
                        height: 125,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const AutoSizeText(
                                    "How to start a company in Egypt",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        158, 222, 235, 221),
                                    child: IconButton(
                                      onPressed: () {
                                        {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HowtoStart())); //NAME OF TARGET CLASS
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color:
                                          const Color.fromARGB(158, 72, 75, 72),
                                      highlightColor: const Color.fromARGB(
                                          158, 189, 207, 188),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
             */
              //BEGINING OF A CARD IS THE CENTER
              Center(
                child: Card(
                    elevation: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      //MAKE CARD CLICKABLE
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Jointstock(
                                  widget.setLocale))); //NAME OF TARGET CLASS
                        });
                      },
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 360,
                          maxHeight: 125,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300,
                                      maxHeight: 125,
                                    ),
                                    child: AutoSizeText(
                                      AppLocalizations.of(context)!.jointStock,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        158, 222, 235, 221),
                                    child: IconButton(
                                      onPressed: () {
                                        {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Jointstock(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color:
                                          const Color.fromARGB(158, 72, 75, 72),
                                      highlightColor: const Color.fromARGB(
                                          158, 189, 207, 188),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
              //END OF THE CLICKABLE CARD
              Center(
                child: Card(
                    elevation: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      //MAKE CARD CLICKABLE
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LLc(
                                  widget.setLocale))); //NAME OF TARGET CLASS
                        });
                      },
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 360,
                          maxHeight: 125,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300,
                                      maxHeight: 125,
                                    ),
                                    child: AutoSizeText(
                                      AppLocalizations.of(context)!.llc,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        158, 222, 235, 221),
                                    child: IconButton(
                                      onPressed: () {
                                        {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) => LLc(widget
                                                      .setLocale))); //NAME OF TARGET CLASS
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color:
                                          const Color.fromARGB(158, 72, 75, 72),
                                      highlightColor: const Color.fromARGB(
                                          158, 189, 207, 188),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
              Center(
                child: Card(
                    elevation: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      //MAKE CARD CLICKABLE
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Foreigncomp(
                                  widget.setLocale))); //NAME OF TARGET CLASS
                        });
                      },
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 360,
                          maxHeight: 125,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300,
                                      maxHeight: 125,
                                    ),
                                    child: AutoSizeText(
                                      AppLocalizations.of(context)!
                                          .foreign_comp,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        158, 222, 235, 221),
                                    child: IconButton(
                                      onPressed: () {
                                        {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Foreigncomp(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color:
                                          const Color.fromARGB(158, 72, 75, 72),
                                      highlightColor: const Color.fromARGB(
                                          158, 189, 207, 188),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
              //BEGINING OF A CARD IS THE CENTER
              Center(
                child: Card(
                    elevation: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      //MAKE CARD CLICKABLE
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RepresentOffice(
                                  widget.setLocale))); //NAME OF TARGET CLASS
                        });
                      },
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 360,
                          maxHeight: 125,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300,
                                      maxHeight: 125,
                                    ),
                                    child: AutoSizeText(
                                      AppLocalizations.of(context)!.repOffice,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        158, 222, 235, 221),
                                    child: IconButton(
                                      onPressed: () {
                                        {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RepresentOffice(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color:
                                          const Color.fromARGB(158, 72, 75, 72),
                                      highlightColor: const Color.fromARGB(
                                          158, 189, 207, 188),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
              //END OF THE CLICKABLE CARD
              Center(
                child: Card(
                    elevation: 70,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      //MAKE CARD CLICKABLE
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Oneperson(
                                  widget.setLocale))); //NAME OF TARGET CLASS
                        });
                      },
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 360,
                          maxHeight: 125,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 340,
                                      maxHeight: 125,
                                    ),
                                    child: AutoSizeText(
                                      AppLocalizations.of(context)!.onePerson,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color.fromARGB(
                                        158, 222, 235, 221),
                                    child: IconButton(
                                      onPressed: () {
                                        {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Oneperson(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color:
                                          const Color.fromARGB(158, 72, 75, 72),
                                      highlightColor: const Color.fromARGB(
                                          158, 189, 207, 188),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
            ])));
  }
}
