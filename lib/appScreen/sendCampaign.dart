import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mailchimp_new/model/GetCampaignModel.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../provider/OffsetProvider.dart';

class SendCampaign extends StatefulWidget {
  const SendCampaign({Key? key}) : super(key: key);

  @override
  State<SendCampaign> createState() => _SendCampaignState();
}

class _SendCampaignState extends State<SendCampaign> {

  bool getted = false;
  String error = "";

  Future sendEmail(String id) async {
    final response = await http.post(
      Uri.parse('https://us13.api.mailchimp.com/3.0/campaigns/${id}/actions/send'),
      headers: <String, String>{
        'Authorization': 'auth key',
      },
      body: jsonEncode(<String, dynamic>{

      }),
    );

    if (response.statusCode == 204) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print("sent");
      setState(() {

      });

    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      print("Exception aa gaya");
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
      getted=true;


      return GetCampaignModel.fromJson(data);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception([response.body.toString()]);
    }
  }

  @override
  void initState() {
    super.initState();
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
              child: Column(
                children: [
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
                    child: Center(
                      child: Text("Send Campaign"),
                    ),
                  ),

                  Container(
                    height: 550,
                    child: FutureBuilder(
                      future: getCampaigns(),
                      builder: (BuildContext context, AsyncSnapshot<GetCampaignModel> snapshot) {
                        return getted?ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount:snapshot.data!.campaigns!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: ListTile(
                                title: Text(getted==false?"Loading..":snapshot.data!.campaigns![index].settings!.subjectLine.toString()),
                                subtitle: Text(getted==false?"Loading..":snapshot.data!.campaigns![index].status.toString()),
                                trailing: snapshot.data!.campaigns![index].status.toString()=="sent"||snapshot.data!.campaigns![index].status.toString()=="sending"?Container(
                                  padding: EdgeInsets.all(8),
                                    color: Colors.grey,
                                    child: Text("Expired or Sending")):InkWell(
                                  onTap: (){
                                    print("Detected");
                                    sendEmail(snapshot.data!.campaigns![index].id.toString());
                                  },
                                      child: Container(
                                      padding: EdgeInsets.all(8),
                                  color: Colors.greenAccent,
                                  child: Text("Send to ALL")
                                ),
                                    ),
                              ),
                            );
                          },
                        ):CircularProgressIndicator();
                      },)


                  ),
                  Text(error),


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
