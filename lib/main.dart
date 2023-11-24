// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types, constant_identifier_names, avoid_print, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/Pages/mailUs.dart';
import 'Pages/aboutUs.dart';
import 'Pages/taxTips.dart';
import 'Pages/salaryTax.dart';
import 'Pages/contactUs.dart';
import 'Pages/germanDesk.dart';
import 'Pages/zakatCalculators.dart';
import 'Pages/company_types.dart';
import 'Pages/tax_calculators.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      title: 'Fathalla CPA',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(setLocale),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;
  //OUR SERVICES
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 242, 249),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 250, 242, 249),
            bottomOpacity: 0.0,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.ourServices,
                    style:
                        const TextStyle(color: Color.fromARGB(130, 0, 0, 0))),
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

              const SizedBox(height: 20),
              Row(
                //Horizental order
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => TaxCalulator(widget
                                        .setLocale))); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(Icons.calculate_outlined,
                                  size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.tax_calculators,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const SalTAX())); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(Icons.attach_money_outlined,
                                  size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.salary_calculators,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                ],
              ),
              //2ND LINE
              const SizedBox(height: 30),
              Row(
                //Horizental order
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => taxTips(widget
                                        .setLocale))); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(
                                  CupertinoIcons.money_dollar_circle,
                                  size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.tax_tips,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CompTypes(widget
                                        .setLocale))); //NAME OF TARGET CLASS
                              },
                              icon:
                                  const Icon(Icons.business_center, size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.company_types,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                ],
              ),

              const SizedBox(height: 30),
              /* 
            3RD LINE
            */
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ZakatCalculators())); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(Icons.mosque, size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.zakat_calculator,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const AboutUs())); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(Icons.business, size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.about,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ],
              ),
              //4TH LINE

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const GermanDesk()));
                              },
                              icon: const Icon(Icons.business, size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.german_button,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ContactUs(widget
                                        .setLocale))); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(Icons.contact_phone, size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.contact,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ],
              ), //5TH ROW /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(minWidth: 100, maxWidth: 150),
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                minimumSize: const Size(100, 100),
                                maximumSize: const Size(150, 150),
                                textStyle: const TextStyle(fontSize: 13),
                                primary:
                                    const Color.fromARGB(255, 51, 171, 95)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      MailUs(widget.setLocale)));
                            },
                            icon: const Icon(Icons.email, size: 50.0),
                            label: const Text('')),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.mailUs,
                          style: const TextStyle(
                              fontFamily: 'Roboto', fontSize: 16),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 150),
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(100, 100),
                                  maximumSize: const Size(150, 150),
                                  textStyle: const TextStyle(fontSize: 13),
                                  primary:
                                      const Color.fromARGB(255, 51, 171, 95)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Languages(widget
                                        .setLocale))); //NAME OF TARGET CLASS
                              },
                              icon: const Icon(Icons.translate, size: 50.0),
                              label: const Text('')),
                          const SizedBox(height: 10),
                          Text(
                            AppLocalizations.of(context)!.language,
                            style: const TextStyle(
                                fontFamily: 'Roboto', fontSize: 16),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Languages extends StatefulWidget {
  const Languages(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;
  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                //NAME OF TARGET CLASS
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage((locale) {})));
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
                Text(AppLocalizations.of(context)!.language,
                    style:
                        const TextStyle(color: Color.fromARGB(130, 0, 0, 0))),
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(height: 65),
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
                          widget.setLocale(
                              const Locale.fromSubtags(languageCode: 'en'));
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
                                children: const [
                                  Text(
                                    "English",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    )),
              ),
              const SizedBox(height: 15),
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
                          widget.setLocale(
                              const Locale.fromSubtags(languageCode: 'de'));
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
                                children: const [
                                  Text(
                                    "Deutsche",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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

/*  
 2NDONE
     ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        minimumSize: Size(80, 80),
                        textStyle: TextStyle(fontSize: 13),
                        primary: Color.fromARGB(255, 24, 148, 7)),
                    onPressed: () {
                      setState(() {
                        val -= 1;
                      });
                    },
                    child: Text(val.toString())),*/
/*
class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "About us",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
              Container(
                  child: Image.asset(
                "assets/LOGO.png",
                height: 72,
                width: 300,
              ))
            ]),
            //END OF LOGO
            const SizedBox(height: 35),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Who are we :',
                  style: TextStyle(
                      color: Color.fromARGB(255, 24, 148, 7),
                      fontFamily: 'Open Sans',
                      fontSize: 28),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Fathalla & Co. was founded by Mr. Ibrahim Fathalla back in 1977 on the belief of efficiently handling all finances and taxing issues for individuals, companies, and organizations so that they can shift their focus on scaling their business and maximizing their savings. Mr. Fathalla’s heavy experience in the industry has helped shape the reputation of the firm demonstrating a deep understanding of the market challenges across 40 years and more. Our team members are our greatest asset; they are professional calibers who maintain high standards of integrity and honesty and possess distinguished capabilities that solidified our name in the market. Now, Fathalla and Co. is considered to be one of the pioneer firms in Egypt in the sector of accounting and consultancy with a long list of satisfied clients. ",
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                color: Color.fromARGB(255, 36, 51, 34),
                fontFamily: 'Open Sans',
                fontSize: 18,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mission :',
                  style: TextStyle(
                      color: Color.fromARGB(255, 24, 148, 7),
                      fontFamily: 'Open Sans',
                      fontSize: 28),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We at Fathalla & Co. are dedicated to delivering effective, efficient, and highly qualified accounting, tax, audit, and consulting services to meet the needs of our clients. For this, we rely on our network of highly experienced accountants and lawyers who are committed to providing best-of-breed solutions to our clients and ensuring mutual financial success",
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                color: Color.fromARGB(255, 36, 51, 34),
                fontFamily: 'Open Sans',
                fontSize: 18,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Vision :',
                  style: TextStyle(
                      color: Color.fromARGB(255, 24, 148, 7),
                      fontFamily: 'Open Sans',
                      fontSize: 28),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "To be recognized as one of the top leading accounting and consulting firms of choice in Egypt and the region through providing innovative services and integrated advice for growing businesses across the world. ",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                color: Color.fromARGB(255, 36, 51, 34),
                fontFamily: 'Open Sans',
                fontSize: 18,
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Nexia International :',
                  style: TextStyle(
                      color: Color.fromARGB(255, 24, 148, 7),
                      fontFamily: 'Open Sans',
                      fontSize: 28),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  child: Image.asset(
                "assets/Nexialogo.png",
                height: 72,
                width: 300,
              ))
            ]),

            const SizedBox(
              height: 15,
            ),
            const Text(
              "We are proud to be a member of Nexia International, a leading global network of independent accounting and consulting firms that has been awarded the Network of the Year at the Digital Accountancy Awards in 2021. Nexia provides a comprehensive portfolio of audit, accountancy, tax, and advisory services operating across 752 offices with more than 265 member firms in over 128 countries. \n Nexia’s philosophy resides in helping its members connect together and share their global expertise in order to leverage their efficiency, thus, ensuring the deliverance of top-quality services to their clients. When you choose a Nexia member firm you get a more responsive, more partner-led service wherever you are in the world.\n It is such a productive collaboration that further continues to strengthen our knowledge and competence in the field of accounting and business advisory.  ",
              maxLines: 22,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                color: Color.fromARGB(255, 36, 51, 34),
                fontFamily: 'Open Sans',
                fontSize: 18,
              ),
            ),
          ],
        )));
  }
}
*/
//TAX TIPS PAGE -/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/
/*
class taxTips extends StatefulWidget {
  const taxTips({Key? key}) : super(key: key);

  @override
  State<taxTips> createState() => _taxTipsState();
}

class _taxTipsState extends State<taxTips> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Color.fromARGB(255, 36, 51, 34),
      fontFamily: 'Open Sans',
      fontSize: 20,
    );
    const text = Text(
      "It is filed and submitted on an annual basis within four months from the end of fiscal year. \n Ex. If the company's fiscal year ends 31 December 2021, then The income tax return must be submitted before the end of April of the following year (before 30 April 2022)",
      maxLines: 13,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      style: TextStyle(
        color: Color.fromARGB(255, 36, 51, 34),
        fontFamily: 'Open Sans',
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );
    const textStyle2 = TextStyle(
      color: Color.fromARGB(255, 36, 51, 34),
      fontFamily: 'Open Sans',
      fontSize: 20,
    );
    const textStyle3 = TextStyle(
      color: Color.fromARGB(255, 36, 51, 34),
      fontFamily: 'Open Sans',
      fontSize: 20,
    );
    var children2 = [
      const SizedBox(height: 25),
      const Text(
        //CHECK 2. TAKAFUL FOR BETTER UNDERSTANDING OF THE WIDGET BODY
        '1. Corporate Income Tax Return (CIT): (Annually) :',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: TextStyle(
          color: Color.fromARGB(255, 36, 51, 34),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 10),
      const Text(
        '• Due Date of Tax return:',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10,
      ),
      const SizedBox(width: 290, child: text),
      const SizedBox(height: 10),
      const Text(
        '• Tax Payment Date:',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: textStyle2,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10,
      ),
      const SizedBox(
          width: 290,
          child: Text(
            "Income tax must be paid before the end of April of the following fiscal year in case of calendar year",
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: TextStyle(
              color: Color.fromARGB(255, 36, 51, 34),
              fontFamily: 'Open Sans',
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )),
      const SizedBox(height: 10),
      const Text(
        '• Rates:',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        style: textStyle3,
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 10,
      ),
      const SizedBox(
          width: 290,
          child: Text(
            "22.5% of the Net Income",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: TextStyle(
              color: Color.fromARGB(255, 36, 51, 34),
              fontFamily: 'Open Sans',
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )),
    ];
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const HomePage())); //NAME OF TARGET CLASS
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
                const Text(
                  "Tax tips",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
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
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          SingleChildScrollView(
            //HORIZENTAL SCROLL
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 15,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: children2),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '2. Takaful Contribution: (Annually)',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "It is calculated as .0025 of the total sales revenue (As shown in the Profit & Loss statement)\n Ex: If total revenue is (1,000,000 EGP ) , takaful contribution will be (1,000,000*0.0025) 2,500 EGP",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Takaful contribution must be paid before the end of April of the following fiscal year and Has to be paid to the following (account no. 9300704175 of Central bank of Egypt)",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "0.25% of the annual gross sales revenue amount",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '3. Payroll Tax (Salary Tax):',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Quarterly:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Form 4 is filed each quarter, and it has to be submitted in the next month following the quarter. \n Ex: for quarter 4(October, November, and December 2021) must be filled out and submitted before 31 January 2022 ",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Must be paid monthly before day 15 of next month. \n Ex: for month December 2021 payroll tax must be paid before 15 January 2022",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "2.5% to 25%",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        Text(
                          '• Annually:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Annual tax reconciliation (Form 6) Employers should submit an annual tax reconciliation to the tax authority during January of each year showing the annual salaries and wages of each employee accompanied with the unpaid payroll tax amounts.   ",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Form 6 filed & submitted on an annual basis, and it has to be submitted during January of each year.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "2.5% to 25%",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '4. Value Added Tax (VAT): (Monthly)',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Form 10 is filed on a monthly basis & must be submitted during 30 days of the following month \n Ex: For December 2021, VAT return must be filed and submitted in the next month before 31 January 2022",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "VAT must be paid within 30 days.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Commonly 14%, other rates applies for scheduled products and services such as (5%, 8% & 10%), some products are exempted.",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '5. Withholding Tax (WHT):',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Form 41 is filed each quarter, and it has to be submitted in the next month following the quarter.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Must be paid in the next month following the quarter.\n Ex: For quarter 4 (October, November, and December 2021 )WHT must be paid before 31 January 2022.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "1% purchases goods / 3% services / 5% Professional fees",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '6. Withholding Tax (WHT) Foreign / Non-Resident:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Form 11 is filed and submitted to (Central Administration for international agreements) monthly before day 15 of next month",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Must be paid monthly before day 15 of next month \n Ex: If a non resident company provides consulting services to a resident company for 100,000 EGP during January 2022 so 20,000EGP (20% withholding tax) should be deducted and paid to sthe tax authority before 15 February 2022.",
                              maxLines: 13,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "20% (article 56 of law no.91 for 2005)",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '7. Dividend Tax:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Froms 42 & 44 have to be submitted maximum by day 5 of the next month following the distribution.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Must be paid before day 5 of the next month following the distribution Exception: Foreign branches profits are considered distributed profits dividends tax must be paid 60 days after the financial year end.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "10% for Non listed companies / 5% for listed companies",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          "8. Social Contribution Honoring the martyrs' victims and injured of war and terrorist operations:",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Due Date of Tax return:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "It is calculated as 0.0005 of the gross salary of employees \n Ex: If Gross salary of employee A is (10,000 EGP) social contribution will be (10,000*0.0005) 5 EGP",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Must be paid monthly before day 10 of next month (on account no. 9450772730) \n Ex: for month December 2021 Social Contribution must be paid before 10 January 2022",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "0.0005 of monthly gross salaries",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '9. Social Insurance:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Must be paid monthly before day 15 of next month",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "11% Employee Share - 18.75% Company Share from the insured salary (Minimum insured salary is 1,400 EGP & Maximum insured salary is 9,400 EGP for the year 2022) Note: According to Resolution No. 57 of 2021 issued by the Ministry of Planning and Economic Development, the minimum wage is set at 2,400 EGP",
                              maxLines: 13,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '10. Emergency Fund:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Applies on the companies that have 30 or more employees.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Tax Payment Date:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "It is calculated as 0.01of the basic salary and must be paid monthly before day 15 of next month \n Ex: If basic salary of employee A is (2,060 EGP) amount to be paid will be (2,060*00.01) 20.60 EGP",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "1% of basic Salary (320 EGP minimum, 2,060 EGP maximum) for the year 2022.",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          '11. Social and Cultural Services Fund:',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '• Rates:',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "5 EGP for each employee Anually.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ])));
  }
}
*//*
class TaxCalulator extends StatefulWidget {
  //OUR TAX CALCULATORS
  const TaxCalulator({Key? key}) : super(key: key);

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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Our Tax calculators",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
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
                                builder: (context) =>
                                    const IncTAX())); //NAME OF TARGET CLASS//NAME OF TARGET CLASS
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
                                    const Text(
                                      "Corporate Income Tax",
                                      style: TextStyle(
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
                                                        const IncTAX())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const Takafulcont())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Takaful Contribution ",
                                      style: TextStyle(
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Takafulcont())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const Vatax())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Value Added Tax",
                                      style: TextStyle(
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Vatax())); //NAME OF TARGET CLASS
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
                            builder: (context) =>
                                const Withholdings())); //NAME OF TARGET CLASS
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
                                const Text(
                                  "Withholding Tax",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 36, 51, 34),
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      const Color.fromARGB(158, 222, 235, 221),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) =>
                                              const Withholdings())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const WhtFor())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Withholding Tax Non-Resident",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
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
                                                      const WhtFor())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const Divendedtax())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Dividend Tax",
                                      style: TextStyle(
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Divendedtax())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const SocialCon())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Social Contribution",
                                      style: TextStyle(
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SocialCon())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const SocIns())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Social Insurance",
                                      style: TextStyle(
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SocIns())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const Emrgncyfund())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Emergency Fund",
                                      style: TextStyle(
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
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Emrgncyfund())); //NAME OF TARGET CLASS
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

class IncTAX extends StatefulWidget {
  const IncTAX({Key? key}) : super(key: key);

  @override
  State<IncTAX> createState() => _IncTAXState();
}

class _IncTAXState extends State<IncTAX> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Corporate Income tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Profit before tax",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.225;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Yearly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Profit before tax",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Corporation tax (22.5%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net Income (after tax)",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class Takafulcont extends StatefulWidget {
  const Takafulcont({Key? key}) : super(key: key);

  @override
  State<Takafulcont> createState() => _Takafulcont();
}

class _Takafulcont extends State<Takafulcont> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Takaful Contribution",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter gross sales revenue",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.0025;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Yearly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Annual gross sales revenue",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Contribution (0.25%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net Value",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class WhtFor extends StatefulWidget {
  const WhtFor({Key? key}) : super(key: key);

  @override
  State<WhtFor> createState() => _WhtFor();
}

class _WhtFor extends State<WhtFor> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Witholding Tax Non-resident",
                  style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 19),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Payment for non-residents",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.2;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Ammount",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Deducted WHT (20%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net amount",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class SocialCon extends StatefulWidget {
  const SocialCon({Key? key}) : super(key: key);

  @override
  State<SocialCon> createState() => _SocialCon();
}

class _SocialCon extends State<SocialCon> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Social Contribution",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter the gross salary of your employees",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.0005;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Gross salaries",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Deducted value (0.005%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net gross salary of employees",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class Emrgncyfund extends StatefulWidget {
  const Emrgncyfund({Key? key}) : super(key: key);

  @override
  State<Emrgncyfund> createState() => _Emrgncyfund();
}

class _Emrgncyfund extends State<Emrgncyfund> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Emergency fund",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter your total basic salaries",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.01;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Total basic salaries",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Deducted tax (1%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net basic salaries",
                            style: TextStyle(
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
              ))
            ])));
  }
}

//NAMES OF CHOICES
enum SingingCharacter { listed, non_listed }

class Divendedtax extends StatefulWidget {
  const Divendedtax({Key? key}) : super(key: key);

  @override
  State<Divendedtax> createState() => _Divendedtax();
}

class _Divendedtax extends State<Divendedtax> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Dividend Tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter profit after taxes",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_character == SingingCharacter.listed) {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.05;
                          netIncome = double.parse(GrossIncome) - allTaxes;
                        } else if (_character == SingingCharacter.non_listed) {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.1;
                          netIncome = double.parse(GrossIncome) - allTaxes;
                        }

                        /* GrossIncome = TextInputVal.text;
                        allTaxes = double.parse(GrossIncome) * 0.01;
                        netIncome = double.parse(GrossIncome) - allTaxes;*/
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
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Your company is (5% /10%) :",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              Container(
                  //color: Color.fromARGB(255, 233, 14, 14),
                  child: Center(
                      child: SizedBox(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
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
                                  title: const Text(
                                    'Listed',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
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
                    ),
                    Container(
                      child: Card(
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
                                  title: const Text(
                                    'Non listed',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
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
                    ),
                  ],
                ),
              ))),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Profit after tax",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Dividended tax",
                            style: TextStyle(
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
              )),
            ])));
  }
}

class Withholdings extends StatefulWidget {
  const Withholdings({Key? key}) : super(key: key);

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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Withholding Taxes",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                  Container(
                      child: Image.asset(
                    "assets/LOGO.png",
                    height: 72,
                    width: 300,
                  ))
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
                                builder: (context) =>
                                    const Purchgood())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Purchases goods tax",
                                      style: TextStyle(
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
                                                        const Purchgood())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const ServcTax())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Services tax",
                                      style: TextStyle(
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
                                                        const ServcTax())); //NAME OF TARGET CLASS
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
                                builder: (context) =>
                                    const Proffsfees())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Professional fees tax",
                                      style: TextStyle(
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
                                                        const Proffsfees())); //NAME OF TARGET CLASS
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

class Purchgood extends StatefulWidget {
  const Purchgood({Key? key}) : super(key: key);

  @override
  State<Purchgood> createState() => _PurchgoodState();
}

class _PurchgoodState extends State<Purchgood> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const Withholdings())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Purchases goods tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter the value of the purchased goods",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.01;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Quarterly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Purchases value",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "WHT (1%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net amount",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class ServcTax extends StatefulWidget {
  const ServcTax({Key? key}) : super(key: key);

  @override
  State<ServcTax> createState() => _ServcTaxState();
}

class _ServcTaxState extends State<ServcTax> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const Withholdings())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Services tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter the value of the services ",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.03;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Quarterly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Services value",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "WHT (3%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net ammount",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class Proffsfees extends StatefulWidget {
  const Proffsfees({Key? key}) : super(key: key);

  @override
  State<Proffsfees> createState() => _ProffsfeesState();
}

class _ProffsfeesState extends State<Proffsfees> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const Withholdings())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Professional fees tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter the value of the professional fees",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.05;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Quarterly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Professional fees value",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "WHT (5%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net ammount",
                            style: TextStyle(
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
              ))
            ])));
  }
}

//NAMES OF CHOICES
enum Vatlist { listed, non_listed }

class Vatax extends StatefulWidget {
  const Vatax({Key? key}) : super(key: key);

  @override
  State<Vatax> createState() => _Vataxtax();
}

class _Vataxtax extends State<Vatax> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
  double netIncome = 0;
  double allTaxes = 0;
  Vatlist? _character = Vatlist.listed;
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Value Added Tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Amount",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_character == Vatlist.listed) {
                          GrossIncome = TextInputVal.text;
                          netIncome = double.parse(GrossIncome) / 1.14;
                          allTaxes = double.parse(GrossIncome) - netIncome;
                        } else if (_character == Vatlist.non_listed) {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.14;
                          netIncome = double.parse(GrossIncome) * 1.14;
                        }

                        /* GrossIncome = TextInputVal.text;
                        allTaxes = double.parse(GrossIncome) * 0.01;
                        netIncome = double.parse(GrossIncome) - allTaxes;*/
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
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly (14%) :",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              Container(
                  //color: Color.fromARGB(255, 233, 14, 14),
                  child: Center(
                      child: SizedBox(
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                          elevation: 15,
                          color: const Color.fromRGBO(255, 255, 255, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: InkWell(
                              //MAKE CARD CLICKABLE
                              onTap: () {
                                setState(() {
                                  _character = Vatlist.listed;
                                });
                              },
                              child: SizedBox(
                                width: 180,
                                child: ListTile(
                                  title: const Text(
                                    'Included',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  leading: Radio<Vatlist>(
                                    value: Vatlist.listed,
                                    groupValue: _character,
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.green),
                                    onChanged: (Vatlist? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              ) // Function is executed on tap.
                              )),
                    ),
                    Container(
                      child: Card(
                          elevation: 15,
                          color: const Color.fromRGBO(255, 255, 255, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: InkWell(
                              //MAKE CARD CLICKABLE
                              onTap: () {
                                setState(() {
                                  _character = Vatlist.non_listed;
                                });
                              },
                              child: SizedBox(
                                width: 180,
                                child: ListTile(
                                  title: const Text(
                                    'Excluded',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  leading: Radio<Vatlist>(
                                    value: Vatlist.non_listed,
                                    groupValue: _character,
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.green),
                                    onChanged: (Vatlist? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              ) // Function is executed on tap.
                              )),
                    ),
                  ],
                ),
              ))),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Total amount",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "VAT (14%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Amount after VAT",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class SocIns extends StatefulWidget {
  const SocIns({Key? key}) : super(key: key);

  @override
  State<SocIns> createState() => _SocInsState();
}

class _SocInsState extends State<SocIns> {
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
                        const TaxCalulator())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Social insurance",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                  Container(
                      child: Image.asset(
                    "assets/LOGO.png",
                    height: 72,
                    width: 300,
                  ))
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
                                builder: (context) =>
                                    const SocIns())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Employees",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
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
                                                        const SocIns())); //NAME OF TARGET CLASS
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
                /*  Center(
                  child: Card(
                    elevation: 70,
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
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
                                const Text(
                                  "Employers and Entrepreneurs",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 36, 51, 34),
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(158, 222, 235, 221),
                                  child: IconButton(
                                    onPressed: () {
                                      {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EmpleRSocINS()));//NAME OF TARGET CLASS
                                      }
                                    },
                                    icon:
                                        const Icon(Icons.keyboard_arrow_right),
                                    color: Color.fromARGB(158, 72, 75, 72),
                                    highlightColor:
                                        Color.fromARGB(158, 189, 207, 188),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 70,
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
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
                                const Text(
                                  "Egyptian employees working abroad",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 36, 51, 34),
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      Color.fromARGB(158, 222, 235, 221),
                                  child: IconButton(
                                    onPressed: () {
                                      {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EmpleeAbrdSI()));//NAME OF TARGET CLASS
                                      }
                                    },
                                    icon:
                                        const Icon(Icons.keyboard_arrow_right),
                                    color: Color.fromARGB(158, 72, 75, 72),
                                    highlightColor:
                                        Color.fromARGB(158, 189, 207, 188),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),*/
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
                                builder: (context) =>
                                    const NonregSocINS())); //NAME OF TARGET CLASS
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
                                    const Text(
                                      "Non-regular category employees",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 36, 51, 34),
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
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
                                                        const NonregSocINS())); //NAME OF TARGET CLASS
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

//NAMES OF CHOICES
enum Whopays { employee, employer }

class SocIns extends StatefulWidget {
  const SocIns({Key? key}) : super(key: key);

  @override
  State<SocIns> createState() => _SocIns();
}

class _SocIns extends State<SocIns> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
  double netIncome = 0;
  double allTaxes = 0;
  Whopays? _pays = Whopays.employee;
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
                        const SocIns())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Employees' Social Insurance",
                  style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 19),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter your Gross salary",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_pays == Whopays.employer) {
                          GrossIncome = TextInputVal.text;
                          if ((double.parse(GrossIncome) >= 9400)) {
                            allTaxes = 9400 * 0.1875;
                            netIncome = double.parse(GrossIncome) - allTaxes;
                          } else {
                            allTaxes = double.parse(GrossIncome) * 0.1875;
                            netIncome = double.parse(GrossIncome) - allTaxes;
                          }
                        } else if (_pays == Whopays.employee) {
                          GrossIncome = TextInputVal.text;
                          if ((double.parse(GrossIncome) >= 9400)) {
                            allTaxes = 9400 * 0.11;
                            netIncome = double.parse(GrossIncome) - allTaxes;
                          } else {
                            allTaxes = double.parse(GrossIncome) * 0.11;
                            netIncome = double.parse(GrossIncome) - allTaxes;
                          }
                        }

                        /* GrossIncome = TextInputVal.text;
                        allTaxes = double.parse(GrossIncome) * 0.01;
                        netIncome = double.parse(GrossIncome) - allTaxes;*/
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
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Who is paying (18.75/ 11%):",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              Container(
                  //color: Color.fromARGB(255, 233, 14, 14),
                  child: Center(
                      child: SizedBox(
                width: 375,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                          elevation: 15,
                          color: const Color.fromRGBO(255, 255, 255, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: InkWell(
                              //MAKE CARD CLICKABLE
                              onTap: () {
                                setState(() {
                                  _pays = Whopays.employer;
                                });
                              },
                              child: SizedBox(
                                width: 165,
                                child: ListTile(
                                  title: const Text(
                                    'Employer',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  leading: Radio<Whopays>(
                                    value: Whopays.employer,
                                    groupValue: _pays,
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.green),
                                    onChanged: (Whopays? value) {
                                      setState(() {
                                        _pays = value;
                                      });
                                    },
                                  ),
                                ),
                              ) // Function is executed on tap.
                              )),
                    ),
                    Container(
                      child: Card(
                          elevation: 15,
                          color: const Color.fromRGBO(255, 255, 255, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: InkWell(
                              //MAKE CARD CLICKABLE
                              onTap: () {
                                setState(() {
                                  _pays = Whopays.employee;
                                });
                              },
                              child: SizedBox(
                                width: 165,
                                child: ListTile(
                                  title: const Text(
                                    'Employee',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  leading: Radio<Whopays>(
                                    value: Whopays.employee,
                                    groupValue: _pays,
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => Colors.green),
                                    onChanged: (Whopays? value) {
                                      setState(() {
                                        _pays = value;
                                      });
                                    },
                                  ),
                                ),
                              ) // Function is executed on tap.
                              )),
                    ),
                  ],
                ),
              ))),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly (Max 9400 Min 1400)",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Monthly subscribtion ",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Total contribution",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Salary after contribution",
                            style: TextStyle(
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
              ))
            ])));
  }
}

class NonregSocINS extends StatefulWidget {
  const NonregSocINS({Key? key}) : super(key: key);

  @override
  State<NonregSocINS> createState() => _NonregSocINS();
}

class _NonregSocINS extends State<NonregSocINS> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                        const SocIns())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Non Regulars' Social Insurance",
                  style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 18),
                ),
                SizedBox(width: 45)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
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
                        hintText: "Enter your monthly subscription income",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (TextInputVal.text == "") {
                          GrossIncome = "0";
                        } else {
                          GrossIncome = TextInputVal.text;
                          allTaxes = double.parse(GrossIncome) * 0.13;
                          netIncome = double.parse(GrossIncome) - allTaxes;
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Gross Income",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "All taxes (13%)",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Net Income",
                            style: TextStyle(
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
              ))
            ])));
  }
}
*/


/*
class EmpleRSocINS extends StatefulWidget {
  EmpleRSocINS({Key? key}) : super(key: key);

  @override
  State<EmpleRSocINS> createState() => _EmpleRSocINSState();
}

class _EmpleRSocINSState extends State<EmpleRSocINS> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SocIns()));//NAME OF TARGET CLASS
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
                const Text(
                  "Employers Social Insurance",
                  style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 18),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Color.fromARGB(255, 254, 253, 255),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  148, 15, 197, 109)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey[800],
                          fontFamily: 'Lato',
                        ),
                        hintText: "Enter your monthly subscription income",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        GrossIncome = TextInputVal.text;
                        allTaxes = double.parse(GrossIncome) * 0.25;
                        netIncome = double.parse(GrossIncome) - allTaxes;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'Lato',
                        ),
                        primary: Color.fromARGB(255, 51, 171, 95)),
                    child: const Text(
                      'Calculate',
                    ),
                  ),
                )),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Gross Income",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "All taxes (25%)",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 224, 13, 13)),
                          ),
                          Text(
                            allTaxes.toStringAsFixed(2).toString(),
                            style: TextStyle(
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
              )),
              SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Net Income",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 51, 171, 95)),
                          ),
                          Text(
                            netIncome.toStringAsFixed(2).toString(),
                            style: TextStyle(
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
              ))
            ])));
  }
}
*/
/*
class EmpleeAbrdSI extends StatefulWidget {
  EmpleeAbrdSI({Key? key}) : super(key: key);

  @override
  State<EmpleeAbrdSI> createState() => _EmpleeAbrdSI();
}

class _EmpleeAbrdSI extends State<EmpleeAbrdSI> {
  final TextInputVal = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    TextInputVal.dispose();
    super.dispose();
  }

  String GrossIncome = '0';
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SocIns()));//NAME OF TARGET CLASS
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
                const Text(
                  "Abroad employees Social Insurance",
                  style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 18),
                ),
                SizedBox(width: 15)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
              ]),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: TextInputVal,
                      decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Color.fromARGB(255, 254, 253, 255),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  148, 15, 197, 109)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey[800],
                          fontFamily: 'Lato',
                        ),
                        hintText: "Enter your monthly income subscription ",

                        suffixIcon: IconButton(
                          onPressed: () => TextInputVal.clear(),
                          icon: Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        GrossIncome = TextInputVal.text;
                        allTaxes = double.parse(GrossIncome) * 0.21;
                        netIncome = double.parse(GrossIncome) - allTaxes;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontFamily: 'Lato',
                        ),
                        primary: Color.fromARGB(255, 51, 171, 95)),
                    child: const Text(
                      'Calculate',
                    ),
                  ),
                )),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Monthly",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Gross Income",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            GrossIncome,
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "All taxes (21%)",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 224, 13, 13)),
                          ),
                          Text(
                            allTaxes.toStringAsFixed(2).toString(),
                            style: TextStyle(
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
              )),
              SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Net Income",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 51, 171, 95)),
                          ),
                          Text(
                            netIncome.toStringAsFixed(2).toString(),
                            style: TextStyle(
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
              ))
            ])));
  }
}
*/
/*
class CompTypes extends StatefulWidget {
  const CompTypes({Key? key}) : super(key: key);

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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Types of companies in Egypt",
                  style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0), fontSize: 18),
                ),
                SizedBox(width: 15)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
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
                                  const Text(
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
                              builder: (context) =>
                                  const Jointstock())); //NAME OF TARGET CLASS
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
                                  const Text(
                                    "Joint Stock Company ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
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
                                                      const Jointstock())); //NAME OF TARGET CLASS
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
                              builder: (context) =>
                                  const LLc())); //NAME OF TARGET CLASS
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
                                  const Text(
                                    "Limited Liability Company (LLC)",
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
                                                      const LLc())); //NAME OF TARGET CLASS
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
                              builder: (context) =>
                                  const Foreigncomp())); //NAME OF TARGET CLASS
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
                                  const Text(
                                    "Branch of a foreign company",
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
                                                      const Foreigncomp())); //NAME OF TARGET CLASS
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
                              builder: (context) =>
                                  const RepresentOffice())); //NAME OF TARGET CLASS
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
                                  const Text(
                                    "Representative office",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 51, 34),
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
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
                                                      const Jointstock())); //NAME OF TARGET CLASS
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
                              builder: (context) =>
                                  const Oneperson())); //NAME OF TARGET CLASS
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
                                  const Text(
                                    "One-Person Company",
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
                                                      const Oneperson())); //NAME OF TARGET CLASS
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
*/
/*
class HowtoStart extends StatefulWidget {
  const HowtoStart({Key? key}) : super(key: key);

  @override
  State<HowtoStart> createState() => _HowtoStart();
}

class _HowtoStart extends State<HowtoStart> {
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
                        const CompTypes())); //NAME OF TARGET CLASS
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
                const Text("Start company in Egypt",
                    style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0),
                    )),
                const SizedBox(width: 10)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Easily establish a compnay in Egypt',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 590,
                            child: Text(
                              "If you are interested in setting up a company of any kind and owning a business in Egypt, Fathalla CPA firm can help you. A comprehensive law firm that aims to provide its clients with innovative and quality legal services. We have professional commercial law consultants in areas such as companies, mergers and acquisitions, and commercial law legal services in areas such as companies. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Main required documents to establish company in Egypt',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "1.A trade name clearance certificate from GAFI. \n2.A bank certificate by the capital depositing. \n 3.Power of attorneys and original for establishment. \n4.Copies of the IDs for partners and Egyptian managers and passports for foreign managers. \n5.An original copy of the auditor account ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ])));
  }
}
*//*
class Jointstock extends StatefulWidget {
  const Jointstock({Key? key}) : super(key: key);

  @override
  State<Jointstock> createState() => _Jointstock();
}

class _Jointstock extends State<Jointstock> {
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
                        const CompTypes())); //NAME OF TARGET CLASS
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
                const Text(
                  "Joint stock",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                const SizedBox(width: 61)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Joint Stock company (JSC)',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "- A joint-stock company (JSC) is a company whose capital is divided into shares of equal values, the liability of the shareholder is confined to the value of their shares, rather than that he is not liable for the debts of the company except within the limit of those shares. \n -It may be a closed company or a listed company.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Establishment',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Can be 100% foreigners’ ownership ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Minimum number of shareholders is 3 Companies or Individuals.  ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Submit trade Name Clearance Certificate which checks the name of the company taken by another company or not shall.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Paid 10% of the capital prior to the establishment and provided by bank certificate from an authorized bank by The Central Bank of Egypt. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Managment',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Can be 100% foreign board of directors ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Minimum number of board of directors is 3 members.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Capital',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• The required minimum issued capital is 250,000, Pay 10% is at the time of establishment.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Pay a percentage of 25% from the issued capital within three months from the establishment and pay the remaining amount of the nominal value of the shares within five years. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Taxes',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Taxes at a rate of 22.5 % paid on company profits for JSC. ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ])));
  }
}
*//*
class LLc extends StatefulWidget {
  const LLc({Key? key}) : super(key: key);

  @override
  State<LLc> createState() => _LLc();
}

class _LLc extends State<LLc> {
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
                        const CompTypes())); //NAME OF TARGET CLASS
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
                const Text("Limited Liability Company(LLC) ",
                    style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0),
                    )),
                const SizedBox(width: 10)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Limited Liability Company (LLC) ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•The Limited Liability Company is a closed company due to the limited liability of its partners to the value of their shares in the company.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Establishment',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Can be 100% foreigners’ ownership.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Minimum number of shareholders is 2 (Individuals or Companies). ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• No need to deposit capital in the bank (No payment is required).",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Managment',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Manager can be Egyptian or Foreigner.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Capital',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• The minimum share capital required to form an LLC is LE 1,000.",
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• We recommend having a relevant capital to avoid tax problem, and to be able to apply for tenders, and to be able to extract certificates such as: Export License Certificate.",
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Taxes',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "Taxes at a rate of 22.5 % paid on company profits for LLC.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Profit sharing',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• In case of the capital of the limited liability company does not reach LE 250,000, no obligation for the company to distribute part of the profits to the employees. \n•If the capital reaches the mentioned capital, distribute 10% of the net profits to employees, provided that such 10% does not exceed the annual total value of salaries and wages payable to the employees ",
                              maxLines: 29,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ])));
  }
}
/*
class Foreigncomp extends StatefulWidget {
  const Foreigncomp({Key? key}) : super(key: key);

  @override
  State<Foreigncomp> createState() => _Foreigncomp();
}

class _Foreigncomp extends State<Foreigncomp> {
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
                        const CompTypes())); //NAME OF TARGET CLASS
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
                const Text("Foreign branches",
                    style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0),
                    )),
                const SizedBox(width: 10)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Foreign branches',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•Foreign branches can be only registered in Egypt to carry out construction works or generally work of contractual nature according to a contract concluded with any Egyptian entity either the Egyptian Government, Public Sector, or Private Company.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•The use of foreign branch is limited to the purpose of implementing a specific contract in Egypt.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• This contract should be signed with a resident company in Egypt.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Managment',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Managers can be Egyptian or Foreigners.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Capital',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "There are no requirements for the minimum capital investment for the branch. However, made and transfer the initial capital investments in foreign currency to Egypt through a registered Egyptian bank.",
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Capital',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "No capital requirements are needed.",
                              maxLines: 29,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Taxes',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Taxes at a rate of 22.5 % paid on company profits for foreign branches (the same rate as Egyptian companies).",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Foreign branches are entitled to deduct a head office charge up to 10% of their taxable income.",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Foreign branches’ profits in Egypt are considered distributed profits within 60 days after the financial year-end. As a result, a branch must pay dividend tax on its annual profits.",
                              maxLines: 15,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ])));
  }
}
*/
/*
class RepresentOffice extends StatefulWidget {
  const RepresentOffice({Key? key}) : super(key: key);

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
                        const CompTypes())); //NAME OF TARGET CLASS
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
                const Text("Representative office",
                    style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0),
                    )),
                const SizedBox(width: 10)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Representative office',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Its purpose is limited to studying the market without practicing any type of commercial activity. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Subject only to Salary Tax & Withholding tax ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Not subject to Income Tax or VAT.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Managers can be Foreigners or Egyptians.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Representative offices should not',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Issue any invoice.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Receive any money locally (Which means that the banks account should only reflect inwards from the head office only).",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              " Important note :",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
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
                              "• According to the decision of GAFI, life of representative office should not exceed 3 years on average, and to have approval for work year by year.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• GAFI requests that representative office should present market studies to them each year.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "• Representative office should take a decision to open a company or a branch after finishing its market study.",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                const SizedBox(width: 7)
              ],
            ),
          ),
        ])));
  }
}
*/
/*
class Oneperson extends StatefulWidget {
  const Oneperson({Key? key}) : super(key: key);

  @override
  State<Oneperson> createState() => _Oneperson();
}

class _Oneperson extends State<Oneperson> {
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
                        const CompTypes())); //NAME OF TARGET CLASS
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
                const Text("One Person Company",
                    style: TextStyle(
                      color: Color.fromARGB(130, 0, 0, 0),
                    )),
                const SizedBox(width: 10)
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                child: Image.asset(
              "assets/LOGO.png",
              height: 72,
              width: 300,
            ))
          ]),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 45,
              children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 100, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'One-Person Company \n(Single Owner LLC)',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 310,
                            child: Text(
                              "•Minimum capital is 1,000 EGP, must be paid in full at time of incorporation. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 310,
                            child: Text(
                              "•The liability of the owner is limited to his share in the company. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Advantages of one one person company',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•The one-person company needs only one partner or founder, so the opportunity to the small investors to own a company without the need to obtain a certain number of partners or shareholders. Since a one-person company is the owner-partner in which is liable for its share only by the amount of the company’s capital. \n•There is another advantage for the One Person Company is that the decision is made within the company as the owner of a one-person company exercises all the powers granted to the board of directors and the powers of the ordinary and extraordinary general assembly, being the only partner. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 35,
                    color: const Color.fromARGB(255, 245, 250, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 330, maxWidth: 350),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'Establishment and work of a One-Person company ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "•Establish a one-person company by one natural or legal entity only. Thereafter, any more partner in the company shall not be a one-person company. \n•The founder shall establish a company in Egypt by himself or by his representative by submitting an application to the Authority. Each company shall have its regulation including its name, purposes, the data of its founder, duration, and managing system, the address of its head office, branches, the amount of its capital, and the company liquidation. And any data mentioned by the Executive Regulations. \n•An approval from the prime minister or the competent minister if the founder of the company is a public law person. \n•Paid the company’s capital in full prior to the establishment of the company. \n•In case of the founder dealt with the capital to a natural or legal entity, it is a must to amend the company’s data and the commercial register within a period not exceeding three months from the date of the deal, in accordance with the procedures and rules specified by the Regulations. In all cases, the act shall not be effective against third parties except the date of registration in the commercial register. ",
                              maxLines: 50,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ])));
  }
}
*/
/*
class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Contact us",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                  Container(
                      child: Image.asset(
                    "assets/LOGO.png",
                    height: 72,
                    width: 300,
                  ))
                ]),
                //END OF LOGO
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 300,
                      child: Text(
                        'For any inquiries or questions we are more than honored to recieve an email from you on :',
                        style: TextStyle(
                          color: Color.fromARGB(255, 37, 46, 36),
                          fontFamily: 'Open Sans',
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Info@fathalla-cpa.com',
                        style: TextStyle(
                            color: Color.fromARGB(255, 37, 46, 36),
                            fontFamily: 'Open Sans',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 60,
                        color: const Color.fromARGB(130, 218, 231, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 270,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text("Cairo ",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text("Adress :",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text(
                                          "2 Extension Abd El Hamid Badawy St. Sheraton Heliopolis. Cairo ",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text("Phone :",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text("+2 01113939362 ",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 60,
                        color: const Color.fromARGB(130, 218, 231, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SizedBox(
                          width: 300,
                          height: 270,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text("Alexandria ",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text("Adress :",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text(
                                          "62 El Geish st. sporting , Alexandria",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text("Phone :",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 51, 34),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text("+2 03-5931224",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 260,
                                      child: Text("+2 03-5931228",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 36, 51, 34),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
*/
//NAMES OF CHOICES
/*
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
  String NetGross = "Net salary (With tax)";
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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Salary tax",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
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
                              children: const [
                                Text("Gross to Net",
                                    style: TextStyle(
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
                              children: const [
                                Text("Net to Gross",
                                    style: TextStyle(
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
              Container(
                child: Center(
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
                        hintText: "Enter monthly salary",

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
              ),
              Container(
                child: Center(
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
                        hintText: "Monthly Social insurance",

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
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Center(
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
                            howoften = 'Monthly';
                            GrossNet = "Gross salary";
                            NetGross = "Net salary (With tax)";
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
                            TotalCost =
                                double.parse(GrossIncome) + employershare;
                          } else if (_Period == Period.yearly) {
                            howoften = 'Yearly';
                            GrossNet = "Gross salary";
                            NetGross = "Net salary";

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
                            howoften = 'Monthly';
                            GrossNet = "Net salary";
                            NetGross = "Gross salary";
                            GrossIncome = SalVal.text;
                            sival = SIVal.text;
                            netIncome = grossIncomeCalc(
                                double.parse(SalVal.text),
                                double.parse(SIVal.text));

                            employeeShare = double.parse(sival) * 0.11;
                            TAX =
                                salaraytaxcalc(netIncome, double.parse(sival));
                            mosharaka = netIncome * 5 / 10000;

                            employershare = double.parse(sival) * 0.1875;
                            TotalCost = netIncome + employershare;
                          } else if (_Period == Period.yearly) {
                            howoften = 'Yearly';
                            GrossNet = "Net salary";
                            NetGross = "Gross salary";

                            netIncome = grossIncomeCalc(
                                double.parse(SalVal.text),
                                double.parse(SIVal.text));

                            employeeShare = (double.parse(sival) * 0.11) * 12;
                            TAX = (salaraytaxcalc(
                                    netIncome, double.parse(sival))) *
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
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  //color: Color.fromARGB(255, 233, 14, 14),
                  child: Center(
                      child: SizedBox(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
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
                                  title: const Text(
                                    'Monthly',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
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
                    ),
                    Container(
                      child: Card(
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
                                  title: const Text(
                                    'Yearly',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
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
                    ),
                  ],
                ),
              ))),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
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
              )),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
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
              )),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "SI Salary",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Employee Share",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
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
              )),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Mosharka",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Employer Share",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
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
              )),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Tax ",
                            style: TextStyle(
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
              )),
              const SizedBox(
                height: 11,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Total employer Cost ",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 224, 13, 13)),
                          ),
                          Text(
                            TotalCost.toStringAsFixed(2).toString(),
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
              )),
              const SizedBox(
                height: 11,
              ),
              Container(
                  child: Center(
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
              )),
              const SizedBox(height: 15)
            ])));
  }
}
*/

/*
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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Zakat calculators",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                Container(
                    child: Image.asset(
                  "assets/LOGO.png",
                  height: 72,
                  width: 300,
                ))
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
                                        const Text(
                                          "Individual Zakat ",
                                          style: TextStyle(
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
                                        const Text(
                                          "Zakat on trade ",
                                          style: TextStyle(
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
                  ])
            ])));
  }
}
*/
/*
class TradeZakat extends StatefulWidget {
  const TradeZakat({Key? key}) : super(key: key);

  @override
  State<TradeZakat> createState() => _TradeZakatState();
}

class _TradeZakatState extends State<TradeZakat> {
  final market = TextEditingController();
  final cashHand = TextEditingController();
  final goodReceivables = TextEditingController();
  final debitBalances = TextEditingController();
  final shareTrade = TextEditingController();
  final shortPayables = TextEditingController();
  final shortCredit = TextEditingController();
  double total = 0;

  double zakat = 0;
  @override
  void dispose() {
    market.dispose();
    cashHand.dispose();
    goodReceivables.dispose();
    debitBalances.dispose();
    shareTrade.dispose();
    shortPayables.dispose();
    shortCredit.dispose();
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
              children: const [
                Text(
                  "Zakat on trade",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                    Container(
                        child: Image.asset(
                      "assets/LOGO.png",
                      height: 72,
                      width: 300,
                    ))
                  ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: market,
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
                        hintText: "Market value of inventory",

                        suffixIcon: IconButton(
                          onPressed: () => market.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: cashHand,
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
                        hintText: "Cash in bank and in hand",

                        suffixIcon: IconButton(
                          onPressed: () => cashHand.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: goodReceivables,
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
                        hintText: "Receivables ( Good one)",

                        suffixIcon: IconButton(
                          onPressed: () => goodReceivables.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: debitBalances,
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
                        hintText: "All secured debit balances",

                        suffixIcon: IconButton(
                          onPressed: () => debitBalances.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: shareTrade,
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
                        hintText: "Shares for trade",

                        suffixIcon: IconButton(
                          onPressed: () => shareTrade.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Less",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: shortPayables,
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
                        hintText: "Short term payables ",

                        suffixIcon: IconButton(
                          onPressed: () => shortPayables.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                      controller: shortCredit,
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
                        hintText: "All short term credit balances",

                        suffixIcon: IconButton(
                          onPressed: () => shortCredit.clear(),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'(^-?\d*\.?\d*)'))
                      ]),
                )),
              ),
              Container(
                child: Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (shortCredit.text == "") {
                          shortCredit.text = "0";
                        }
                        if (shortPayables.text == "") {
                          shortPayables.text = "0";
                        }
                        if (shareTrade.text == "") {
                          shareTrade.text = "0";
                        }
                        if (debitBalances.text == "") {
                          debitBalances.text = "0";
                        }
                        if (goodReceivables.text == "") {
                          goodReceivables.text = "0";
                        }
                        if (cashHand.text == "") {
                          cashHand.text = "0";
                        }
                        if (market.text == "") {
                          market.text = "0";
                        }
                        total = ((double.parse(market.text) +
                                double.parse(cashHand.text) +
                                double.parse(goodReceivables.text) +
                                double.parse(debitBalances.text) +
                                double.parse(shareTrade.text)) -
                            (double.parse(shortPayables.text) +
                                double.parse(shortCredit.text)));
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
                    child: const Text(
                      'Calculate',
                    ),
                  ),
                )),
              ),
              Container(
                  child: Center(
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
                                  children: const [
                                    Text("What is Nisab?",
                                        style: TextStyle(
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
                                      child: const Text(
                                          "Prophet Muhammad (peace be upon him) had set The Nisab by at a rate equivalent to: 85 grams of gold ",
                                          style: TextStyle(
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
                          const Text(
                            "Zakat base",
                            style: TextStyle(
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
              )),
              const SizedBox(height: 15),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Zakat value (2.5%) ",
                            style: TextStyle(
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
              )),
            ])));
  }
}
*/
/*
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
              children: const [
                Text(
                  "Individual Zakat",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                    Container(
                        child: Image.asset(
                      "assets/LOGO.png",
                      height: 72,
                      width: 300,
                    ))
                  ]),
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Center(
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
                        hintText: "Cash in bank and in hand",

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
              ),
              Container(
                child: Center(
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
                        hintText: "Saved money (for hajj,marriage,..)",

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
              ),
              Container(
                child: Center(
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
                        hintText: "Loans recievable",

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
              ),
              Container(
                child: Center(
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
                        hintText: "Gold and jewlery for investment",

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
              ),
              Container(
                child: Center(
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
                        hintText: "Shares for trade",

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
              ),
              Container(
                child: Center(
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
                        hintText: "Individual share in a company",

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
              ),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Less",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
              Container(
                child: Center(
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
                        hintText: "Short term payables",

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
              ),
              Container(
                child: Center(
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
                    child: const Text(
                      'Calculate',
                    ),
                  ),
                )),
              ),
              Container(
                  child: Center(
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
                                  children: const [
                                    Text("What is Nisab?",
                                        style: TextStyle(
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
                                      child: const Text(
                                          "Prophet Muhammad (peace be upon him) had set The Nisab by at a rate equivalent to: 85 grams",
                                          style: TextStyle(
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
                          const Text(
                            "Zakat base",
                            style: TextStyle(
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
              )),
              const SizedBox(height: 15),
              Container(
                  child: Center(
                child: SizedBox(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Zakat value (2.5%) ",
                            style: TextStyle(
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
              )),
            ])));
  }
}
*/
/*
class GermanDesk extends StatefulWidget {
  const GermanDesk({Key? key}) : super(key: key);

  @override
  State<GermanDesk> createState() => _GermanDeskState();
}

class _GermanDeskState extends State<GermanDesk> {
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
                        const HomePage())); //NAME OF TARGET CLASS
              },
              icon: const Icon(Icons.keyboard_arrow_left),
              color: const Color.fromARGB(130, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Deutscher Schreibtisch",
                  style: TextStyle(color: Color.fromARGB(130, 0, 0, 0)),
                ),
                SizedBox(width: 61)
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
                    Container(
                        child: Image.asset(
                      "assets/LOGO.png",
                      height: 72,
                      width: 300,
                    ))
                  ]),
              const SizedBox(
                height: 25,
              ),
              Wrap(spacing: 45, children: [
                Container(
                    child: Center(
                  child: Card(
                    elevation: 55,
                    shadowColor: const Color.fromARGB(255, 255, 248, 255),
                    color: const Color.fromARGB(237, 248, 253, 248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 340, maxWidth: 360),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'German Title Deutch',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "- A joint-stock company (JSC) is a company whose capital is divided into shares of equal values, the liability of the shareholder is confined to the value of their shares, rather than that he is not liable for the debts of the company except within the limit of those shares. \n -It may be a closed company or a listed company. The company shall have a trading name derived from the purpose of its establishment. The trade name of the company shall include the name or title of one or more of its founders. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
                Container(
                    child: Center(
                  child: Card(
                    elevation: 55,
                    shadowColor: const Color.fromARGB(255, 255, 248, 255),
                    color: const Color.fromARGB(237, 248, 253, 248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                          minHeight: 100, minWidth: 340, maxWidth: 360),
                      child: Column(children: const [
                        SizedBox(height: 25),
                        Text(
                          'German Title Deutch',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 51, 34),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 290,
                            child: Text(
                              "- A joint-stock company (JSC) is a company whose capital is divided into shares of equal values, the liability of the shareholder is confined to the value of their shares, rather than that he is not liable for the debts of the company except within the limit of those shares. \n -It may be a closed company or a listed company. The company shall have a trading name derived from the purpose of its establishment. The trade name of the company shall include the name or title of one or more of its founders. ",
                              maxLines: 39,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 51, 34),
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ]),
                    ),
                  ),
                )),
              ])
            ])));
  }
}
*/*/