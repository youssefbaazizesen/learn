// ignore_for_file: file_names, non_constant_identifier_names

import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//NAMES OF CHOICES
enum Period { monthly, yearly }

class SalTAX extends StatefulWidget {
  const SalTAX({Key? key}) : super(key: key);

  @override
  State<SalTAX> createState() => _SalTAXState();
}

class _SalTAXState extends State<SalTAX> {
  final SalVal = TextEditingController();
  final SIVal = TextEditingController();
  bool isSwitched = false;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    SalVal.dispose();
    SIVal.dispose();
    super.dispose();
  }

  Period? _Period = Period.monthly;
  String howoften = 'Monthly';
  String GrossNet = "Gross salary";
  String NetGross = "Net salary";
  String GrossIncome = '0';
  String sival = '0';
  double netIncome = 0;
  double allTaxes = 0;
  double employeeShare = 0;
  double TAX = 0;
  double netSalary = 0;
  double mosharaka = 0;
  double employershare = 0;
  double TotalCost = 0;

  @override
  Widget build(BuildContext context) {
    salaraytaxcalc(
      //FUNCTION FOR GROSS TO NET
      double GI,
      double SI,
    ) {
      //NUMBERS ARE BASED ON THE INFO IN assets/tranches.jpg
      double tax = 0;
      double annual = (((GI - (SI * 0.11)) * 12) - 9000);
      if (annual <= 600000) {
        if (annual <= 15000) {
          tax = 0;
        } else if (annual <= 30000) {
          tax = ((annual - 15000) * 0.025);
        } else if (annual <= 45000) {
          tax = ((375 + ((annual - 30000)) * 0.1));
        } else if (annual <= 60000) {
          tax = (1875 + ((annual - 45000) * 0.15));
        } else if (annual <= 200000) {
          tax = (4125 + ((annual - 60000) * 0.2));
        } else if (annual <= 400000) {
          tax = (32125 + ((annual - 200000) * 0.225));
        } else {
          tax = (77125 + ((annual - 400000) * 0.25));
        }
      } else if (annual <= 700000) {
        if (annual <= 30000) {
          tax = annual * 0.025;
        } else if (annual <= 45000) {
          tax = (750 + (annual - 30000) * 0.1);
        } else if (annual <= 60000) {
          tax = (2250 + (annual - 45000) * 0.15);
        } else if (annual <= 200000) {
          tax = (4500 + (annual - 60000) * 0.2);
        } else if (annual <= 400000) {
          tax = (32500 + (annual - 200000) * 0.225);
        } else {
          tax = (77500 + (annual - 400000) * 0.25);
        }
      } else if (annual <= 800000) {
        if (annual <= 45000) {
          tax = annual * 0.1;
        } else if (annual <= 60000) {
          tax = (4500 + (annual - 45000) * 0.15);
        } else if (annual <= 200000) {
          tax = (2250 + (annual - 60000) * 0.2);
        } else if (annual <= 200000) {
          tax = (34750 + (annual - 200000) * 0.225);
        } else {
          tax = (79750 + (annual - 400000) * 0.25);
        }
      } else if (annual <= 900000) {
        if (annual <= 60000) {
          tax = annual * 0.15;
        } else if (annual <= 200000) {
          tax = (9000 + (annual - 60000) * 0.2);
        } else if (annual <= 400000) {
          tax = (37000 + (annual - 200000) * 0.225);
        } else {
          tax = (82000 + (annual - 400000) * 0.25);
        }
      } else if (annual <= 1000000) {
        if (annual <= 200000) {
          tax = annual * 0.2;
        } else if (annual <= 400000) {
          tax = (40000 + (annual - 200000) * 0.225);
        } else {
          tax = (79750 + (annual - 400000) * 0.25);
        }
      } else {
        if (annual <= 400000) {
          tax = (annual * 0.225);
        } else {
          tax = (90000 + (annual - 400000) * 0.25);
        }
      }
      return tax / 12;
    } //NUMBERS ARE BASED ON THE INFO IN assets/tranches.jpg

    grossIncomeCalc(double ns, double si) {
      //EXCEL's GOAL SEEK MADE BY HAND (approx compile time 3 seconds (depends on CPU))
      double vgi = ns + (si * 0.11);
      double vns = 0;
      while (vns != ns) {
        while (vns <= ns) {
          vgi += 100;
          vns =
              (vgi - (si * 0.11) - salaraytaxcalc(vgi, si) - (vgi * 5 / 10000));
        }
        vgi -= 200;
        vns -= 200;

        if (vns < ns) {
          while (vns <= ns) {
            vgi += 10;
            vns = (vgi -
                (si * 0.11) -
                salaraytaxcalc(vgi, si) -
                (vgi * 5 / 10000));
          }
        }
        vgi -= 20;
        vns -= 20;

        if (vns < ns) {
          while (vns <= ns) {
            vgi += 1;
            vns = (vgi -
                (si * 0.11) -
                salaraytaxcalc(vgi, si) -
                (vgi * 5 / 10000));
          }
        }
        vgi -= 2;
        vns -= 2;

        if (vns < ns) {
          while (vns <= ns) {
            vgi += 0.01;
            vns = (vgi -
                (si * 0.11) -
                salaraytaxcalc(vgi, si) -
                (vgi * 5 / 10000));
          }
        }

        break;
      }

      return vgi - 0.01;
    }

    Color gN = const Color.fromARGB(255, 51, 171, 95);
    Color nG = const Color.fromARGB(192, 208, 245, 227);

/*
    Color paperGN = Color.fromRGBO(255, 255, 255, 20);
    Color paperNG = Color.fromRGBO(255, 255, 255, 255);

    Color textGN = Color.fromARGB(255, 112, 115, 112);
    Color textNG = Color.fromARGB(255, 255, 255, 255);
*/
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
                  AppLocalizations.of(context)!.salary_calculators,
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
                height: 5,
              ),
              /*   Center(
                child: Card(
                  elevation: 5,
                  color: Color.fromARGB(255, 51, 171, 95),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: SizedBox(
                    width: 360,
                    height: 70,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Card(
                                  elevation: 0,
                                  color: verif == true
                                      ? Color.fromRGBO(255, 255, 255, 20)
                                      : Color.fromRGBO(255, 255, 255, 255),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                  child: InkWell(//MAKE CARD CLICKABLE
                                    customBorder: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        verif = !verif;
                                      });
                                    },
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 170,
                                        minHeight: 62,
                                        maxHeight: 62,
                                        maxWidth: 170,
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 15),
                                                Text(
                                                  "Gross to Net",
                                                  style: TextStyle(
                                                    color: verif == true
                                                        ? Color.fromARGB(
                                                            255, 112, 115, 112)
                                                        : Color.fromARGB(
                                                            255, 255, 255, 255),
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
                              Card(
                                  elevation: 0,
                                  color: verif == false
                                      ? Color.fromRGBO(255, 255, 255, 20)
                                      : Color.fromRGBO(255, 255, 255, 255),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                  child: InkWell(//MAKE CARD CLICKABLE
                                    customBorder: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        verif = !verif;
                                      });
                                    },
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 170,
                                        minHeight: 62,
                                        maxHeight: 62,
                                        maxWidth: 170,
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 15),
                                                Text(
                                                  "Net to Gross",
                                                  style: TextStyle(
                                                    color: verif == false
                                                        ? Color.fromARGB(
                                                            255, 112, 115, 112)
                                                        : Color.fromARGB(
                                                            255, 255, 255, 255),
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
                            ],
                          ),
                        ]),
                  ),
                ),
              ),*/

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                        elevation: 0,
                        color: gN, //const Color.fromRGBO(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: InkWell(
                          //MAKE CARD CLICKABLE
                          customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onTap: () {
                            setState(() {
                              isSwitched = false;
                            });
                          },
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 145,
                              minHeight: 62,
                              maxHeight: 62,
                              maxWidth: 145,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(AppLocalizations.of(context)!.grossnet,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        )),
                    SizedBox(
                        width: 90,
                        height: 90,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Switch(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor:
                                const Color.fromARGB(192, 208, 245, 227),
                            activeTrackColor:
                                const Color.fromARGB(192, 208, 245, 227),
                            inactiveThumbColor:
                                const Color.fromARGB(230, 8, 200, 89),
                            inactiveTrackColor:
                                const Color.fromARGB(230, 8, 200, 89),
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          ),
                        )),
                    Card(
                        elevation: 0,
                        color: nG, //const Color.fromRGBO(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: InkWell(
                          //MAKE CARD CLICKABLE
                          customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onTap: () {
                            setState(() {
                              isSwitched = true;
                            });
                          },
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 140,
                              minHeight: 62,
                              maxHeight: 62,
                              maxWidth: 140,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(AppLocalizations.of(context)!.netgross,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        )),
                  ]),
              const SizedBox(height: 5),
              Center(
                  child: SizedBox(
                width: 360,
                child: TextField(
                    controller: SalVal,
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
                      hintText: AppLocalizations.of(context)!.salaryINPT,

                      suffixIcon: IconButton(
                        onPressed: () => SalVal.clear(),
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
                    controller: SIVal,
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
                      hintText: AppLocalizations.of(context)!.insuranceINPT,

                      suffixIcon: IconButton(
                        onPressed: () => SIVal.clear(),
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
                      if (SIVal.text == "") {
                        SIVal.text = "0";
                      }
                      if (SalVal.text == "") {
                        SalVal.text = "0";
                      }

                      if (isSwitched == false) {
                        if (_Period == Period.monthly) {
                          howoften = AppLocalizations.of(context)!.monthly;
                          GrossNet = AppLocalizations.of(context)!.grossSalary;
                          NetGross = AppLocalizations.of(context)!.netSalary;
                          GrossIncome = SalVal.text;
                          sival = SIVal.text;
                          employeeShare = double.parse(sival) * 0.11;
                          TAX = salaraytaxcalc(
                              double.parse(GrossIncome), double.parse(sival));
                          mosharaka = double.parse(GrossIncome) * 5 / 10000;
                          netIncome = double.parse(GrossIncome) -
                              employeeShare -
                              TAX -
                              mosharaka;
                          employershare = double.parse(sival) * 0.1875;
                          TotalCost = double.parse(GrossIncome) + employershare;
                        } else if (_Period == Period.yearly) {
                          howoften = AppLocalizations.of(context)!.yearly;
                          GrossNet = AppLocalizations.of(context)!.grossSalary;
                          NetGross = AppLocalizations.of(context)!.netSalary;

                          employeeShare =
                              (double.parse(SIVal.text) * 0.11) * 12;
                          TAX = salaraytaxcalc(double.parse(SalVal.text),
                                  double.parse(SIVal.text)) *
                              12;
                          employershare =
                              ((double.parse(SIVal.text) * 0.1875)) * 12;
                          mosharaka =
                              (double.parse(SalVal.text) * 5 / 10000) * 12;

                          GrossIncome = (double.parse(SalVal.text) * 12)
                              .toStringAsFixed(2)
                              .toString();
                          sival = (double.parse(SIVal.text) * 12)
                              .toStringAsFixed(2);
                          netIncome = ((double.parse(SalVal.text) * 12) -
                              employeeShare -
                              TAX -
                              mosharaka);
                          TotalCost = ((double.parse(SalVal.text) * 12 +
                              employershare));
                        }
                      } //if switch false :
                      else {
                        if (_Period == Period.monthly) {
                          howoften = AppLocalizations.of(context)!.monthly;
                          GrossNet = AppLocalizations.of(context)!.netSalary;
                          NetGross = AppLocalizations.of(context)!.grossSalary;
                          GrossIncome = SalVal.text;
                          sival = SIVal.text;
                          netIncome = grossIncomeCalc(double.parse(SalVal.text),
                              double.parse(SIVal.text));

                          employeeShare = double.parse(sival) * 0.11;
                          TAX = salaraytaxcalc(netIncome, double.parse(sival));
                          mosharaka = netIncome * 5 / 10000;

                          employershare = double.parse(sival) * 0.1875;
                          TotalCost = netIncome + employershare;
                        } else if (_Period == Period.yearly) {
                          howoften = AppLocalizations.of(context)!.yearly;
                          GrossNet = AppLocalizations.of(context)!.netSalary;
                          NetGross = AppLocalizations.of(context)!.grossSalary;

                          netIncome = grossIncomeCalc(double.parse(SalVal.text),
                              double.parse(SIVal.text));

                          employeeShare = (double.parse(sival) * 0.11) * 12;
                          TAX =
                              (salaraytaxcalc(netIncome, double.parse(sival))) *
                                  12;
                          mosharaka = (netIncome * 5 / 10000) * 12;

                          employershare = (double.parse(sival) * 0.1875) * 12;
                          TotalCost = (netIncome * 12) + employershare;
                          netIncome *= 12;
                          GrossIncome = (double.parse(SalVal.text) * 12)
                              .toStringAsFixed(2);
                          sival = (double.parse(SIVal.text) * 12)
                              .toStringAsFixed(2);
                        }
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
                  child: const Text(
                    'Calculate',
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
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
                                _Period = Period.monthly;
                              });
                            },
                            child: SizedBox(
                              width: 180,
                              child: ListTile(
                                title: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 175,
                                  ),
                                  child: AutoSizeText(
                                    AppLocalizations.of(context)!.monthly,
                                    style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                leading: Radio<Period>(
                                  value: Period.monthly,
                                  groupValue: _Period,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.green),
                                  onChanged: (Period? value) {
                                    setState(() {
                                      _Period = value;
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
                                _Period = Period.yearly;
                              });
                            },
                            child: SizedBox(
                              width: 170,
                              child: ListTile(
                                title: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 165,
                                  ),
                                  child: AutoSizeText(
                                    AppLocalizations.of(context)!.yearly,
                                    style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                leading: Radio<Period>(
                                  value: Period.yearly,
                                  groupValue: _Period,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.green),
                                  onChanged: (Period? value) {
                                    setState(() {
                                      _Period = value;
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
                            howoften, //IM HERE
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 26,
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
                            GrossNet,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            GrossIncome,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
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
                            AppLocalizations.of(context)!.siSalary,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            sival,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
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
              const SizedBox(
                height: 12,
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
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 220,
                            ),
                            child: AutoSizeText(
                              AppLocalizations.of(context)!.employeeShare,
                              style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            employeeShare.toStringAsFixed(2).toString(),
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
                            AppLocalizations.of(context)!.mosharaka,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            mosharaka.toStringAsFixed(2).toString(),
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
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 220,
                            ),
                            child: AutoSizeText(
                              AppLocalizations.of(context)!.employerShare,
                              style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            employershare.toStringAsFixed(2).toString(),
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
                            AppLocalizations.of(context)!.tax,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 224, 13, 13)),
                          ),
                          Text(
                            TAX.toStringAsFixed(2).toString(),
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
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 230,
                            ),
                            child: AutoSizeText(
                              AppLocalizations.of(context)!.totalcost,
                              style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 224, 13, 13)),
                              maxLines: 1,
                            ),
                          ),
                          ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 130,
                              ),
                              child: AutoSizeText(
                                TotalCost.toStringAsFixed(2).toString(),
                                style: const TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 224, 13, 13)),
                                maxLines: 1,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
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
                            NetGross,
                            style: const TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 51, 171, 95)),
                          ),
                          Text(
                            netIncome.toStringAsFixed(2).toString(),
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
              const SizedBox(height: 15)
            ])));
  }
}
