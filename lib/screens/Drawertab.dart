import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  Function onClic;

  DrawerTab(this.onClic);

  static int CAT_ID = 1;
  static int Setting_ID = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(11.5),
                  child: Center(
                    child: Text(
                      'News App!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu, size: 25),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            onClic(CAT_ID);
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
