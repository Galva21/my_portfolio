import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/screens/main/components/database.dart';
import 'package:my_portfolio/screens/main/components/languages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                controller: ScrollController(),
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Bolivia",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "La Paz",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "22",
                    ),
                    AreaInfoText(
                      title: "E-mail",
                      text: "alvarouan2014@gmail.com",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    DB(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Languages(),
                    SizedBox(height: defaultPadding / 2),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "DOWNLOAD CV",
                    //           style: TextStyle(
                    //             color: Theme.of(context)
                    //                 .textTheme
                    //                 .bodyText1!
                    //                 .color,
                    //           ),
                    //         ),
                    //         SizedBox(width: defaultPadding / 2),
                    //         SvgPicture.asset("assets/icons/download.svg")
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launch('https://www.linkedin.com/in/galva21/');
                            },
                            icon: SvgPicture.asset("icons/linkedin.svg", width: 20,),
                          ),
                          IconButton(
                            onPressed: () {
                              launch('https://github.com/Galva21');
                            },
                            icon: SvgPicture.asset("icons/github.svg", width: 20,),
                          ),
                          IconButton(
                            onPressed: () {
                              launch('https://www.instagram.com/galva.ok/');
                            },
                            icon: SvgPicture.asset("icons/insta.svg", width: 20,),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
