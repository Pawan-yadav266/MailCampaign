import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../model/GetCampaignModel.dart';
import '../provider/OffsetProvider.dart';

class TestCampaign extends StatefulWidget {
  const TestCampaign({Key? key}) : super(key: key);

  @override
  State<TestCampaign> createState() => _TestCampaignState();
}

class _TestCampaignState extends State<TestCampaign> {
  TextEditingController email = TextEditingController();
  bool getted = false;
  bool added = false;
  String error = "";

  Future testEmails(String id) async {
    final response = await http.post(
      Uri.parse(
          'https://us13.api.mailchimp.com/3.0/campaigns/${id}/actions/test'),
      headers: <String, String>{
        'Authorization': 'auth key',
      },
      body: jsonEncode(<String, dynamic>{
        'test_emails': [email.text.toString()],
        'send_type': 'plaintext'
      }),
    );

    if (response.statusCode == 204) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print("tested");
      setState(() {
        added = true;
      });
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print("error aa gaya");
      setState(() {
        error = response.body.toString();
      });
      throw Exception([response.body.toString()]);
    }
  }

  Future<GetCampaignModel> getCampaigns() async {
    final response = await http.get(
      Uri.parse('https://us13.api.mailchimp.com/3.0/campaigns'),
      headers: <String, String>{
        'Authorization': 'auth key',
      },
    );

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print("chal gaya");
      getted = true;
      return GetCampaignModel.fromJson(data);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception([response.body.toString()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return OffsetProvider();
      },
      child: Consumer<OffsetProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return GestureDetector(
              onTap: () {
                value.closeDrawer();
              },
              child: AnimatedContainer(
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  transform:
                      Matrix4.translationValues(value.xOffset, value.yOffset, 0)
                        ..scale(value.scaleFactor),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  duration: Duration(milliseconds: 300),
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        value.isDrawerOpen
                            ? IconButton(
                                onPressed: () {
                                  value.closeDrawer();
                                },
                                icon: Icon(Icons.arrow_back_ios))
                            : IconButton(
                                onPressed: () {
                                  value.openDrawer();
                                },
                                icon: Icon(Icons.menu),
                                color: Colors.black,
                                iconSize: 20,
                              ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/mailchimp.png',
                              width: 120,
                              height: 10,
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/mailchamp.png',
                          ),
                          maxRadius: 20,
                        )
                      ],
                    ),
                    Container(
                        width: double.maxFinite,
                        height: 280,
                        child: FutureBuilder(
                          future: getCampaigns(),
                          builder: (BuildContext context,
                              AsyncSnapshot<GetCampaignModel> snapshot) {
                            return getted
                                ? ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: snapshot.data!.campaigns!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        margin: EdgeInsets.all(8),
                                        child: Card(
                                          elevation: 10,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        getted == false
                                                            ? "Loading.."
                                                            : "Title : ${snapshot.data!.campaigns![index].settings!.subjectLine.toString()}",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      )
                                                    ]),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                          getted == false
                                                              ? "Loading.."
                                                              : "status : ${snapshot.data!.campaigns![index].status.toString()}",
                                                          style: TextStyle(
                                                              fontSize: 20))
                                                    ]),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 290,
                                                        child: TextFormField(
                                                          controller: email,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                "Enter one or more emails",
                                                            labelText:
                                                                'Enter one or more emails',
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              borderSide:
                                                                  const BorderSide(),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(error),
                                                snapshot.data!.campaigns![index]
                                                                .status
                                                                .toString() ==
                                                            "sent" ||
                                                        snapshot
                                                                .data!
                                                                .campaigns![
                                                                    index]
                                                                .status
                                                                .toString() ==
                                                            "sending"
                                                    ? InkWell(
                                                        onTap: () {
                                                          print("Tested");
                                                          testEmails(snapshot
                                                              .data!
                                                              .campaigns![index]
                                                              .id
                                                              .toString());
                                                        },
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8),
                                                            color: Colors.grey,
                                                            child: Text(
                                                                added?"Tested":"Test")),
                                                      )
                                                    : InkWell(
                                                        onTap: () {
                                                          print("Tested");
                                                          testEmails(snapshot
                                                              .data!
                                                              .campaigns![index]
                                                              .id
                                                              .toString());
                                                        },
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            color: Colors
                                                                .greenAccent,
                                                            child:
                                                                Text(added?"Tested":"Test")),
                                                      ),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                : CircularProgressIndicator();
                          },
                        )),
                  ])));
        },
      ),
    );
  }
}
