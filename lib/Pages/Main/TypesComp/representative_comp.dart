// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:learn/Pages/company_types.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RepresentOffice extends StatefulWidget {
  const RepresentOffice(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;

  @override
  State<RepresentOffice> createState() => _RepresentOfficeState();
}

class _RepresentOfficeState extends State<RepresentOffice> {
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
                        CompTypes(widget.setLocale))); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 265,
                  ),
                  child: AutoSizeText(AppLocalizations.of(context)!.repOffice,
                      style: const TextStyle(
                          color: Color.fromARGB(130, 0, 0, 0), fontSize: 22),
                      maxLines: 1),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            )
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          AppLocalizations.of(context)!.repOffice,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rpParagrpah,
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
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
                Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          AppLocalizations.of(context)!.rpShouldNot,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rpShouldNot1,
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rpShouldNot2,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rpShouldNot3,
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
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
                const SizedBox(width: 7)
              ],
            ),
          ),
        ])));
  }
}
