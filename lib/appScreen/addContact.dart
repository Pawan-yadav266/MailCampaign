import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
import '../provider/OffsetProvider.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {

  String error = "";
  bool added = false;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();

  Future addContact() async {
    final response = await http.post(
      Uri.parse('https://us13.api.mailchimp.com/3.0/lists/ff91079a08'),
      headers: <String, String>{
        'Authorization': 'auth key',
      },
      body: jsonEncode(<String, dynamic>{
        "members" : [
          {
            'email_address':email.text.toString(),
            'status':'subscribed',
            'merge_fields':{
              'FNAME':firstName.text.toString(),
              'LNAME':lastName.text.toString()
            }
          }
        ]
      }),
    );

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print("chal gaya");
      setState(() {
        added = true;
      });
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      setState(() {
        error = response.body.toString();
      });
      throw Exception('Failed to create album.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { return OffsetProvider(); },
      child: Consumer<OffsetProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return GestureDetector(
            onTap: (){
              value.closeDrawer();
            },
            child: AnimatedContainer(
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              transform: Matrix4.translationValues(value.xOffset, value.yOffset,0)
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
                      child: Text("ADD Contact"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 300,
                    child: SingleChildScrollView(
                      child:Flex(direction: Axis.vertical,
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: firstName,
                                  decoration: InputDecoration(
                                    hintText: "First Name",
                                    labelText: "First Name",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: lastName,
                                  decoration: InputDecoration(
                                    hintText: "LastName",
                                    labelText: "LastName",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "email",
                                    labelText: 'email',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30,),
                                InkWell(
                                  onTap: (){
                                    print("clicked");
                                    addContact();
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blueGrey
                                    ),
                                    child: Center(child: Text(added?"Added":"Add Contact",style: TextStyle(fontSize: 23,color: Colors.white),)),
                                  ),
                                ),
                                Text(error)
                              ],
                            ),
                          )
                        ],
                      ) ,
                    ),
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
