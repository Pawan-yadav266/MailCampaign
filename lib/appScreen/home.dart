import 'package:flutter/material.dart';
import 'package:mailchimp_new/appScreen/Test%20Campaign.dart';
import 'package:mailchimp_new/appScreen/addCampaign.dart';
import 'package:mailchimp_new/appScreen/addContact.dart';
import 'package:mailchimp_new/appScreen/sendCampaign.dart';
import 'package:provider/provider.dart';

import '../provider/drawerProvider.dart';

class WholeApp extends StatefulWidget {
  const WholeApp({Key? key}) : super(key: key);

  @override
  State<WholeApp> createState() => _WholeAppState();
}

class _WholeAppState extends State<WholeApp> {
  List icon = [
    Icons.addchart,
    Icons.send,
    Icons.reset_tv,
    Icons.contact_mail_rounded,
  ];

  List title = [
    'Add Campaign',
    'Send Campaign',
    'Test Campaign',
    'Add Contact'
  ];

  int indexx = 0;

  List container = [
    AddCampaign(),
    SendCampaign(),
    TestCampaign(),
    AddContact()
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return DrawerProvider();
      },
      child: Scaffold(
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40, left: 18),
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.campaign_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mail Campaign',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 27))
                          ],
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(icon.length, (index) {
                          return Consumer<DrawerProvider>(
                            builder: (BuildContext context, value, Widget? child) {
                              return GestureDetector(
                                onTap: () {
                                  print(index);
                                  value.changeIndex(index);
                                },
                                child: Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        icon[index],
                                        color: value.index == index
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5),
                                        size: 28,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        title[index],
                                        style: TextStyle(
                                            color: value.index == index
                                                ? Colors.white
                                                : Colors.white.withOpacity(0.5),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        })),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('version  1.0.0',
                            style: TextStyle(color: Colors.white, fontSize: 19)),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Consumer<DrawerProvider>(
                builder: (BuildContext context, value, Widget? child) {
                  return container[value.index];
                },
              ),

            ],
          )),
    );
  }
}
