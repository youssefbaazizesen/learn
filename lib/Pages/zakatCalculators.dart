// ignore_for_file: file_names

import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import './Main/ZakatCalc/indivZakat.dart';
import './Main/ZakatCalc/tradeZakat.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ZakatCalculators extends StatefulWidget {
  const ZakatCalculators({Key? key}) : super(key: key);

  @override
  State<ZakatCalculators> createState() => _ZakatCalculatorsState();
}

class _ZakatCalculatorsState extends State<ZakatCalculators> {
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
                Text(
                  AppLocalizations.of(context)!.zakat_calculator,
                  style: const TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                const SizedBox(width: 61)
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                )
              ]),
              const SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Card(
                          elevation: 70,
                          color: const Color.fromARGB(255, 230, 245, 237),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: InkWell(
                            //MAKE CARD CLICKABLE
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const IndivZakat())); //NAME OF TARGET CLASS
                              });
                            },
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 140,
                                minHeight: 140,
                                maxHeight: 180,
                                maxWidth: 180,
                              ),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                            minWidth: 60,
                                            minHeight: 60,
                                          ),
                                          child: Container(
                                            height: 46,
                                            width: 46,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: Alignment.center,
                                            child: const Icon(Icons.person,
                                                color: Color.fromARGB(
                                                    158, 72, 75, 72),
                                                size: 60),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .individualZakat,
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 112, 115, 112),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
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
                          color: const Color.fromARGB(255, 230, 245, 237),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: InkWell(
                            //MAKE CARD CLICKABLE
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const TradeZakat())); //NAME OF TARGET CLASS
                              });
                            },
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                minWidth: 140,
                                minHeight: 140,
                                maxHeight: 180,
                                maxWidth: 180,
                              ),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                            minWidth: 60,
                                            minHeight: 60,
                                          ),
                                          child: Container(
                                            height: 46,
                                            width: 46,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: Alignment.center,
                                            child: const Icon(Icons.business,
                                                color: Color.fromARGB(
                                                    158, 72, 75, 72),
                                                size: 60),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                            maxWidth: 140,
                                          ),
                                          child: AutoSizeText(
                                            AppLocalizations.of(context)!
                                                .tradeZakat,
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 112, 115, 112),
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          )),
                    ),
                  ])
            ])));
  }
}
