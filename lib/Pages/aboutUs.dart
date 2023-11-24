// ignore_for_file: file_names

import 'package:learn/main.dart';
import 'package:flutter/material.dart';

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
              Image.asset(
                "assets/LOGO.png",
                height: 72,
                width: 300,
              )
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
              Image.asset(
                "assets/Nexialogo.png",
                height: 72,
                width: 300,
              )
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
