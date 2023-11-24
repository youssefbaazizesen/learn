import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import './Main/TaxCalc/dividend_tax.dart';
import './Main/TaxCalc/emergency_fund.dart';
import './Main/TaxCalc/inc_tax.dart';
import './Main/TaxCalc/social_ins.dart';
import './Main/TaxCalc/takaful_cont.dart';
import './Main/TaxCalc/vat.dart';
import './Main/TaxCalc/wht_foreigners.dart';
import './Main/TaxCalc/withholding.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TaxCalulator extends StatefulWidget {
  //OUR TAX CALCULATORS
  const TaxCalulator(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;

  @override
  State<TaxCalulator> createState() => _TaxCalulatorState();
}

class _TaxCalulatorState extends State<TaxCalulator> {
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
                  AppLocalizations.of(context)!.ourTaxCalc,
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
                                builder: (context) => IncTAX(widget
                                    .setLocale))); //NAME OF TARGET CLASS//NAME OF TARGET CLASS
                          }); //LINK TO OTHER PAGE
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!.corp_inc,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                                        IncTAX(widget
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
                        //MAKE CARD CLICKABLE//MAKE CARD CLICKABLE
                        onTap: () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Takafulcont(
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!.takaful,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Takafulcont(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
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
                                builder: (context) => Vatax(
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!.vat,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => Vatax(widget
                                                  .setLocale))); //NAME OF TARGET CLASS
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
                            builder: (context) => Withholdings(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 300,
                                    maxHeight: 125,
                                  ),
                                  child: AutoSizeText(
                                    AppLocalizations.of(context)!.wht,
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
                                  backgroundColor:
                                      const Color.fromARGB(158, 222, 235, 221),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => Withholdings(widget
                                              .setLocale))); //NAME OF TARGET CLASS
                                    },
                                    icon:
                                        const Icon(Icons.keyboard_arrow_right),
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
                  ),
                )),
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
                                builder: (context) => WhtFor(
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!.whtFor,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => WhtFor(widget
                                                  .setLocale))); //NAME OF TARGET CLASS
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
                                builder: (context) => Divendedtax(
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!.dividend,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Divendedtax(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
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
                                builder: (context) => SocialIns(
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!
                                            .social_ins,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SocialIns(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
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
                                builder: (context) => Emrgncyfund(
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
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 300,
                                        maxHeight: 125,
                                      ),
                                      child: AutoSizeText(
                                        AppLocalizations.of(context)!
                                            .emergncy_fnd,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Emrgncyfund(widget
                                                          .setLocale))); //NAME OF TARGET CLASS
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
              ]),
            ])));
  }
}
