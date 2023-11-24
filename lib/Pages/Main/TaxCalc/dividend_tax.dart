// ignore_for_file: constant_identifier_names, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn/Pages/tax_calculators.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum SingingCharacter { listed, non_listed }

class Divendedtax extends StatefulWidget {
  const Divendedtax(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;

  @override
  State<Divendedtax> createState() => _Divendedtax();
}

class _Divendedtax extends State<Divendedtax> {
  // ignore: non_constant_identifier_names
  final textInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textInputVal.dispose();
    super.dispose();
  }

  String grossIncome = '0';
  double netIncome = 0;
  double allTaxes = 0;
  SingingCharacter? _character = SingingCharacter.listed;
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
                        TaxCalulator(widget.setLocale))); //NAME OF TARGET CLASS
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
                  AppLocalizations.of(context)!.dividend,
                  style: const TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
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
              const SizedBox(
                height: 25,
              ),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: textInputVal,
                    decoration: InputDecoration(
                      filled: true, //<-- SEE HERE
                      fillColor: const Color.fromARGB(255, 254, 253, 255),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(
                                148, 15, 197, 109)), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: 'Lato',
                      ),
                      hintText: AppLocalizations.of(context)!.dvdndINPT,

                      suffixIcon: IconButton(
                        onPressed: () => textInputVal.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              const SizedBox(
                height: 15,
              ),
              Center(
                  child: SizedBox(
                width: 360,
                height: 49,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_character == SingingCharacter.listed) {
                        grossIncome = textInputVal.text;
                        allTaxes = double.parse(grossIncome) * 0.05;
                        netIncome = double.parse(grossIncome) - allTaxes;
                      } else if (_character == SingingCharacter.non_listed) {
                        grossIncome = textInputVal.text;
                        allTaxes = double.parse(grossIncome) * 0.1;
                        netIncome = double.parse(grossIncome) - allTaxes;
                      }

                      /* grossIncome = textInputVal.text;
                      allTaxes = double.parse(grossIncome) * 0.01;
                      netIncome = double.parse(grossIncome) - allTaxes;*/
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 22,
                        fontFamily: 'Lato',
                      ),
                      primary: const Color.fromARGB(255, 51, 171, 95)),
                  child: Text(
                    AppLocalizations.of(context)!.calculate,
                  ),
                ),
              )),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.yourComp,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Center(
                  child: SizedBox(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                        elevation: 15,
                        color: const Color.fromRGBO(255, 255, 255, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: InkWell(
                            //MAKE CARD CLICKABLE
                            onTap: () {
                              setState(() {
                                _character = SingingCharacter.listed;
                              });
                            },
                            child: SizedBox(
                              width: 170,
                              child: ListTile(
                                title: AutoSizeText(
                                  AppLocalizations.of(context)!.listed,
                                  style: const TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.listed,
                                  groupValue: _character,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.green),
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                            ) // Function is executed on tap.
                            )),
                    Card(
                        elevation: 15,
                        color: const Color.fromRGBO(255, 255, 255, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: InkWell(
                            //MAKE CARD CLICKABLE
                            onTap: () {
                              setState(() {
                                _character = SingingCharacter.non_listed;
                              });
                            },
                            child: SizedBox(
                              width: 170,
                              child: ListTile(
                                title: AutoSizeText(
                                  AppLocalizations.of(context)!.nonlisted,
                                  style: const TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  maxLines: 2,
                                ),
                                leading: Radio<SingingCharacter>(
                                  value: SingingCharacter.non_listed,
                                  groupValue: _character,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.green),
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                            ) // Function is executed on tap.
                            )),
                  ],
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.monthly,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.proftAftrtax,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            grossIncome,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.dividend,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 224, 13, 13)),
                          ),
                          Text(
                            allTaxes.toStringAsFixed(2).toString(),
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 224, 13, 13)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
