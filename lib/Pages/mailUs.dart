import 'package:url_launcher/url_launcher.dart';
import 'package:learn/main.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MailUs extends StatefulWidget {
  const MailUs(this.setLocale, {super.key});
  final void Function(Locale locale) setLocale;
  @override
  State<MailUs> createState() => _MailUsState();
}

class _MailUsState extends State<MailUs> {
  final subject = TextEditingController();
  final mContent = TextEditingController();
  final oName = TextEditingController();

  @override
  void dispose() {
    oName.dispose();
    subject.dispose();
    mContent.dispose();
    super.dispose();
  }

  Future launchEmail({
    required String eMail,
    required String yName,
    required String subject,
    required String content,
  }) async {
    final url =
        'mailto:$eMail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull("$content\n \n $yName")}';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  int maxlines = 1;
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
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 265,
                  ),
                  child: AutoSizeText(AppLocalizations.of(context)!.mailUs,
                      style: const TextStyle(
                          color: Color.fromARGB(130, 0, 0, 0), fontSize: 22),
                      maxLines: 1),
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
                //END OF LOGO
                const SizedBox(height: 20),
                Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: oName,
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
                      hintText: AppLocalizations.of(context)!.yourOrg,
                      suffixIcon: IconButton(
                        onPressed: () => oName.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: subject,
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
                      hintText: AppLocalizations.of(context)!.mailSubject,

                      suffixIcon: IconButton(
                        onPressed: () => subject.clear(),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: SizedBox(
                  width: 360,
                  child: TextField(
                    controller: mContent,
                    maxLines: 15,
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(0, 14, 0, 40),
                      filled: true, //<-- SEE HERE
                      fillColor: const Color.fromARGB(255, 254, 253, 255),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 3,
                            color: Color.fromARGB(
                                148, 15, 197, 109)), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: 'Lato',
                      ),
                      hintText: AppLocalizations.of(context)!.mailContent,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                )),
                Center(
                    child: SizedBox(
                  width: 360,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      if (oName.text == "") {
                        oName.text = "Your organization's name ";
                      }
                      if (subject.text == "") {
                        oName.text = 'Please provide subject';
                      }
                      if (mContent.text == null) {
                        oName.text = '';
                      }
                      launchEmail(
                        eMail: "info@fathalla-cpa.com",
                        yName: oName.text,
                        subject: subject.text,
                        content: mContent.text,
                      );
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
                      AppLocalizations.of(context)!.send,
                    ),
                  ),
                )),
              ]),
        ));
  }
}
