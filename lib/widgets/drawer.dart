import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgURL =
        "https://wp.technologyreview.com/wp-content/uploads/2021/02/20210128_Keatley-Bill_Gates_0107_R.jpeg";
    return Drawer(
      child: Container(
        color: Colors.amber[400],
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.amber[400]),
                  accountName: Text("Bill Gates"),
                  accountEmail: Text("vks01@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imgURL))
                  // Image.network(imgURL),
                  ,
                )),
            Divider(
              height: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail_outline_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Mail",
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
