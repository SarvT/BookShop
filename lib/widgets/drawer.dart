import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imgUrl =
        "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
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
