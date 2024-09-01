import 'package:flutter/material.dart';
import 'package:videocallapp/Pages/callPage.dart';

class userAuth extends StatefulWidget {
  @override
  State<userAuth> createState() => _userAuthState();
}

class _userAuthState extends State<userAuth> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _meetingID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _username,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      // Customize the border color
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width:
                                2.0), // Border color when TextField is enabled
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width:
                                2.0), // Border color when TextField is focused
                      ),
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _meetingID,
                    decoration: InputDecoration(
                      labelText: 'Meeting ID',
                      hintText: 'Meet ID',
                      // Customize the border color
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width:
                                2.0), // Border color when TextField is enabled
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width:
                                2.0), // Border color when TextField is focused
                      ),
                      prefixIcon: Icon(Icons.numbers_outlined),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String userName = _username.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CallPage(
                                  callId: _meetingID.text, name: userName)));
                    },
                    child: Text('Join Meet'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
