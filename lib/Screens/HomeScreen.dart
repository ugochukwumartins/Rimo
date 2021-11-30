import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.network(""),
                Text("Hi Sade"),
                Spacer(),
                Icon(Icons.notification_add_rounded),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              color: Colors.blue,
              height: 300,
              width: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Primary Wallet"),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.notification_add_rounded),
                      ),
                    ],
                  ),
                  Text("NGN 200,000"),
                  Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Add Cash"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text("Get Started"),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                GridBox(icon: Icons.ac_unit, title: "Send", titles: "Money"),
                SizedBox(
                  width: 8,
                ),
                GridBox(icon: Icons.ac_unit, title: "Request", titles: "Money"),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                GridBox(
                    icon: Icons.ac_unit, title: "Create a", titles: "Wallet"),
                SizedBox(
                  width: 8,
                ),
                GridBox(
                    icon: Icons.ac_unit,
                    title: "Upgrade your",
                    titles: "Account"),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [Text("Recent Transactons"), Spacer(), Text("See all")],
            ),
            SizedBox(
              height: 3,
            ),
            linearImage(
                img: "",
                title: "Transfer to Chidi Obi",
                tiles: "Sent",
                title1: "- N150,000",
                tiles2: "Aug 12, 2020"),
            Spacer(),
            linearIcon(
              icon: Icons.ac_unit,
              title: "Bank Transfer",
              tiles: "Sent",
              title1: "- N150,000",
              tiles2: "Aug 12, 2020",
            )
          ],
        ),
      ),
    );
  }

  Widget GridBox(
      {required IconData icon, required String title, required String titles}) {
    return Container(
      height: 200,
      width: 250,
      child: Column(
        children: [
          Row(
            children: [
              Text(""),
              Spacer(),
              Icon(icon),
            ],
          ),
          Text(title),
          Text(titles),
        ],
      ),
    );
  }

  Widget linearImage(
      {required String img,
      required String title,
      required String tiles,
      required String title1,
      required String tiles2}) {
    return Container(
      height: 150,
      width: 480,
      child: Row(
        children: [
          Image.network(img),
          Column(
            children: [
              Text(title),
              Text(tiles),
            ],
          ),
          Column(
            children: [
              Text(title1),
              Text(tiles2),
            ],
          )
        ],
      ),
    );
  }

  Widget linearIcon(
      {required IconData icon,
      required String title,
      required String tiles,
      required String title1,
      required String tiles2}) {
    return Container(
      height: 150,
      width: 480,
      child: Row(
        children: [
          Icon(icon),
          Column(
            children: [
              Text(title),
              Text(tiles),
            ],
          ),
          Column(
            children: [
              Text(title1),
              Text(tiles2),
            ],
          )
        ],
      ),
    );
  }
}
