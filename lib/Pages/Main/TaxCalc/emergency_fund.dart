// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn/Pages/tax_calculators.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Emrgncyfund extends StatefulWidget {
  const Emrgncyfund(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;

  @override
  State<Emrgncyfund> createState() => _Emrgncyfund();
}

class _Emrgncyfund extends State<Emrgncyfund> {
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
                  AppLocalizations.of(context)!.emergncy_fnd,
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
                      hintText: AppLocalizations.of(context)!.emrgncINPT,

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
                      if (textInputVal.text == "") {
                        grossIncome = "0";
                      } else {
                        grossIncome = textInputVal.text;
                        allTaxes = double.parse(grossIncome) * 0.01;
                        netIncome = double.parse(grossIncome) - allTaxes;
                      }
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
                            AppLocalizations.of(context)!.totalbasic,
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
                            AppLocalizations.of(context)!.emrgncfund,
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
              const SizedBox(
                height: 11,
              ),
            ])));
  }
}
