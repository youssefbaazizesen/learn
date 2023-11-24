// ignore_for_file: file_names, camel_case_types

import 'package:auto_size_text/auto_size_text.dart';
import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class taxTips extends StatefulWidget {
  const taxTips(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;

  @override
  State<taxTips> createState() => _taxTipsState();
}

class _taxTipsState extends State<taxTips> {
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  AppLocalizations.of(context)!.tax_tips,
                  style: const TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                const SizedBox(width: 61)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            //VERTICAL SCROLL
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            )
          ]),
          SingleChildScrollView(
            //HORIZENTAL SCROLL
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Center(
                  child: Card(
                    elevation: 15,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 300,
                            ),
                            child: AutoSizeText(
                              //CHECK 2. TAKAFUL FOR BETTER UNDERSTANDING OF THE WIDGET BODY
                              '1. ${AppLocalizations.of(context)!.corp_inc}: (${AppLocalizations.of(context)!.yearly})',
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
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddCIT,
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpCIT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rCIT,
                              maxLines: 1,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '2. ${AppLocalizations.of(context)!.takaful}: (${AppLocalizations.of(context)!.yearly})',
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
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddTC,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpTC,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rTC,
                              maxLines: 2,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '3.1 ${AppLocalizations.of(context)!.payRoll}:',
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
                        Text(
                          AppLocalizations.of(context)!.quarterly,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddPT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpPT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rPT,
                              maxLines: 1,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '3.2 ${AppLocalizations.of(context)!.annualTax}:',
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
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddAT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpAT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rPT,
                              maxLines: 5,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '4. ${AppLocalizations.of(context)!.vat}: (${AppLocalizations.of(context)!.monthly})',
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
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddVAT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpVAT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rVAT,
                              maxLines: 7,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '5. ${AppLocalizations.of(context)!.wht}:',
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
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddWHT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpWHT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rWHT,
                              maxLines: 3,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '6. ${AppLocalizations.of(context)!.whtFor}:',
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
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddWHTF,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpWHTF,
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rWHTF,
                              maxLines: 2,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '7. ${AppLocalizations.of(context)!.dividend}: ',
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
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddDT,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                    text: AppLocalizations.of(context)!.tpDT1),
                                TextSpan(
                                    text: AppLocalizations.of(context)!
                                        .dtException,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 3)),
                                TextSpan(
                                    text: AppLocalizations.of(context)!.tpDT2)
                              ]),
                              maxLines: 19,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rDT,
                              maxLines: 3,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '8. ${AppLocalizations.of(context)!.socialCont}:',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.dueDateTax,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.ddSC,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpSC,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rSC,
                              maxLines: 3,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '9. ${AppLocalizations.of(context)!.social_ins}:',
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
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpSI,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rSI,
                              maxLines: 13,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '10. ${AppLocalizations.of(context)!.emergncy_fnd}:',
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
                              AppLocalizations.of(context)!.ddEF,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.taxDate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.tpEF,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rEF,
                              maxLines: 10,
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
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: [
                        const SizedBox(height: 25),
                        Text(
                          '11. ${AppLocalizations.of(context)!.socialcultu}:',
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
                        Text(
                          AppLocalizations.of(context)!.tRate,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              AppLocalizations.of(context)!.rSS,
                              maxLines: 2,
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
              ],
            ),
          ),
        ])));
  }
}
