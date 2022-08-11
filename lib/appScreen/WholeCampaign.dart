import 'package:flutter/material.dart';
import 'package:mailchimp_new/appScreen/sendCampaign.dart';
import 'package:mailchimp_new/appScreen/addCampaign.dart';
import 'package:mailchimp_new/provider/drawerProvider.dart';
import 'package:provider/provider.dart';
import '../appScreen/addContact.dart';
import 'Test Campaign.dart';

class MakeCampaign extends StatefulWidget {
  const MakeCampaign({Key? key}) : super(key: key);

  @override
  State<MakeCampaign> createState() => _MakeCampaignState();
}

class _MakeCampaignState extends State<MakeCampaign> {

  List container = [
    AddCampaign(),
    SendCampaign(),
    TestCampaign(),
    AddContact()
  ];


  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          xOffset = 0;
          yOffset = 0;
          isDrawerOpen = false;
          scaleFactor = 1;
        });
      },
      child: ChangeNotifierProvider(
        create: (BuildContext context) {
          return DrawerProvider();
        },
        child: AnimatedContainer(
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          transform: Matrix4.translationValues(xOffset, yOffset,0)
            ..scale(scaleFactor),
          padding: EdgeInsets.symmetric(horizontal: 10),

          duration: Duration(seconds: 3),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     isDrawerOpen
              //         ? IconButton(
              //             onPressed: () {
              //               setState(() {
              //                 xOffset = 0;
              //                 yOffset = 0;
              //                 isDrawerOpen = false;
              //                 scaleFactor = 1;
              //               });
              //             },
              //             icon: Icon(Icons.arrow_back_ios))
              //         : IconButton(
              //             onPressed: () {
              //               setState(() {
              //                 xOffset = 230;
              //                 yOffset = 150;
              //                 scaleFactor = 0.6;
              //                 isDrawerOpen = true;
              //               });
              //             },
              //             icon: Icon(Icons.menu)),
              //     Column(
              //       children: [
              //         Text('MailChimp'),
              //
              //       ],
              //     ),
              //     CircleAvatar()
              //   ],
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
