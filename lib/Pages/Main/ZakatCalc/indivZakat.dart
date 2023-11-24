// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../zakatCalculators.dart';
import 'package:learn/Pages/zakatCalculators.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IndivZakat extends StatefulWidget {
  const IndivZakat({Key? key}) : super(key: key);

  @override
  State<IndivZakat> createState() => _IndivZakatState();
}

class _IndivZakatState extends State<IndivZakat> {
  final bankHand = TextEditingController();
  final saved = TextEditingController();
  final loansRecievable = TextEditingController();
  final goldJewl = TextEditingController();
  final sharesTrade = TextEditingController();
  final indivShare = TextEditingController();
  final shortTerm = TextEditingController();

  double total = 0;
  double zakat = 0;

  @override
  void dispose() {
    bankHand.dispose();
    saved.dispose();
    loansRecievable.dispose();
    goldJewl.dispose();
    sharesTrade.dispose();
    indivShare.dispose();
    shortTerm.dispose();
    super.dispose();
  }

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
                        const ZakatCalculators())); //NAME OF TARGET CLASS
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
                  AppLocalizations.of(context)!.individualZakat,
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
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: bankHand,
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
                      hintText: AppLocalizations.of(context)!.bankHand,

                      suffixIcon: IconButton(
                        onPressed: () => bankHand.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: saved,
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
                      hintText: AppLocalizations.of(context)!.savedMoney,

                      suffixIcon: IconButton(
                        onPressed: () => saved.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: loansRecievable,
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
                      hintText: AppLocalizations.of(context)!.loansRecivables,

                      suffixIcon: IconButton(
                        onPressed: () => loansRecievable.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: goldJewl,
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
                      hintText: AppLocalizations.of(context)!.goldJewl,

                      suffixIcon: IconButton(
                        onPressed: () => goldJewl.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: sharesTrade,
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
                      hintText: AppLocalizations.of(context)!.sharesTrades,

                      suffixIcon: IconButton(
                        onPressed: () => sharesTrade.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: indivShare,
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
                      hintText: AppLocalizations.of(context)!.indivShare,

                      suffixIcon: IconButton(
                        onPressed: () => indivShare.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.less,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: shortTerm,
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
                      hintText: AppLocalizations.of(context)!.shortPayables,

                      suffixIcon: IconButton(
                        onPressed: () => shortTerm.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'(^-?\d*\.?\d*)'))
                    ]),
              )),
              Center(
                  child: SizedBox(
                width: 360,
                height: 49,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //IF EMPTY THEN IT'S EQUAL TO 0
                      if (bankHand.text == "") {
                        bankHand.text = "0";
                      }
                      if (saved.text == "") {
                        saved.text = "0";
                      }
                      if (loansRecievable.text == "") {
                        loansRecievable.text = "0";
                      }
                      if (goldJewl.text == "") {
                        goldJewl.text = "0";
                      }
                      if (sharesTrade.text == "") {
                        sharesTrade.text = "0";
                      }
                      if (indivShare.text == "") {
                        indivShare.text = "0";
                      }
                      if (shortTerm.text == "") {
                        shortTerm.text = "0";
                      }

                      total = ((double.parse(bankHand.text) +
                          double.parse(saved.text) +
                          double.parse(loansRecievable.text) +
                          double.parse(goldJewl.text) +
                          double.parse(sharesTrade.text) +
                          (double.parse(indivShare.text)) -
                          double.parse(shortTerm.text)));
                      if (total > 96474) {
                        zakat = total * 0.025;
                      } else {
                        zakat = 0;
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
              Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        color: const Color.fromARGB(130, 218, 231, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            minHeight: 100,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        AppLocalizations.of(context)!
                                            .whatNissab,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.start),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                          minHeight: 100, maxWidth: 350),
                                      child: Text(
                                          AppLocalizations.of(context)!.nissab,
                                          style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.start),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.zakatBase,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            total.toStringAsFixed(2).toString(),
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
                            AppLocalizations.of(context)!.zakatValue,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 51, 171, 95)),
                          ),
                          Text(
                            zakat.toStringAsFixed(2).toString(),
                            style: const TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 51, 171, 95),
                            ),
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
