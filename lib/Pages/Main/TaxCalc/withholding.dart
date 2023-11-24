import 'package:flutter/material.dart';
import 'package:learn/Pages/tax_calculators.dart';
import './Withholding/purchase.dart';
import './Withholding/service.dart';
import './Withholding/proffesion.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Withholdings extends StatefulWidget {
  const Withholdings(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;

  @override
  State<Withholdings> createState() => _WithholdingsState();
}

class _WithholdingsState extends State<Withholdings> {
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
                  AppLocalizations.of(context)!.wht,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/LOGO.png",
                    height: 72,
                    width: 300,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Wrap(children: [
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
                                builder: (context) => Purchgood(
                                    widget.setLocale))); //NAME OF TARGET CLASS
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
                                    Text(
                                      AppLocalizations.of(context)!
                                          .purchedgoods,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
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
                                                        Purchgood(widget
                                                            .setLocale))); //NAME OF TARGET CLASS
                                          }
                                        },
                                        icon: const Icon(
                                            Icons.keyboard_arrow_right),
                                        color: const Color.fromARGB(
                                            158, 72, 75, 72),
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
                                builder: (context) => ServcTax(
                                    widget.setLocale))); //NAME OF TARGET CLASS
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
                                    Text(
                                      AppLocalizations.of(context)!.servicetax,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
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
                                                        ServcTax(widget
                                                            .setLocale))); //NAME OF TARGET CLASS
                                          }
                                        },
                                        icon: const Icon(
                                            Icons.keyboard_arrow_right),
                                        color: const Color.fromARGB(
                                            158, 72, 75, 72),
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
                                builder: (context) => Proffsfees(
                                    widget.setLocale))); //NAME OF TARGET CLASS
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
                                    Text(
                                      AppLocalizations.of(context)!.proftax,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
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
                                                        Proffsfees(widget
                                                            .setLocale))); //NAME OF TARGET CLASS
                                          }
                                        },
                                        icon: const Icon(
                                            Icons.keyboard_arrow_right),
                                        color: const Color.fromARGB(
                                            158, 72, 75, 72),
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
              ])
            ])));
  }
}
