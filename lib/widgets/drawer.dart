import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imgUrl =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      // color: Colors.red
                      ),
                  accountName: Text('someone'),
                  accountEmail: Text('hey@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  // currentAccountPicture: Image.network(imgUrl),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              style: 
              TextStyle(
                color: Colors.white
                )
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
              style: 
              TextStyle(
                color: Colors.white
                )
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Subscribe",
                textScaleFactor: 1.2,
              style: 
              TextStyle(
                color: Colors.white
                )
                ),
            )
          ],
        ),
      ),
    );
  }
}
