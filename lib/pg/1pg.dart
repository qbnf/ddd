import 'package:flutter/material.dart';

class Pg1 extends StatelessWidget {
  const Pg1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        leading: Builder(
          ///menu
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {}, icon: Icon(Icons.home)); // menu button
          },
        ),
        actions: [
          IconButton(

              ///login
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Log In'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Login',
                                focusColor: Colors.white38,
                              ),
                              onChanged: (String value) {},
                            ),

                            ///dlya login
                            Padding(padding: EdgeInsets.all(5)),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Password',
                                  fillColor: Colors.white38),
                              onChanged: (String value) {},
                            ),
                          ],
                        ),
                        actions: [
                          ElevatedButton(

                              ///signin
                              onPressed: () {
                                Navigator.of(context).pop();
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Sign In'),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'Login',
                                                  hoverColor: Colors.white38),
                                              onChanged: (String value) {},
                                            ),

                                            ///dlya signin
                                            Padding(padding: EdgeInsets.all(5)),
                                            TextField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'Password',
                                                  fillColor: Colors.white38),
                                              onChanged: (String value) {},
                                            ),
                                            Padding(padding: EdgeInsets.all(5)),
                                            TextField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'Repeat Password',
                                                  fillColor: Colors.white38),
                                              onChanged: (String value) {},
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          ElevatedButton(

                                              ///login
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Sign In'))
                                        ],
                                      );
                                    });
                              },
                              child: Text('Sign In')),
                          ElevatedButton(

                              ///login
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Log In'))
                        ],
                      );
                    });
              },
              icon: Icon(Icons.login)) // login button
        ],
        title: Text(
          'Vbz',
          style: TextStyle(color: Colors.black38),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: [
          Text('test'),
          ElevatedButton(onPressed: () {}, child: Text('test'))
        ],
      ),
    );
  }
}
