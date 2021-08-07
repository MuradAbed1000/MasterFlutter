import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.nsowo.com/wp-content/uploads/2021/06/%D9%85%D8%B3%D9%84%D8%B3%D9%84-%D8%B9%D8%B2%D9%8A%D8%B2.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Muard"),
                  accountEmail: Text("muradabed683@gmail.com"),
                  currentAccountPicture: CircleAvatar(radius: 50.0, backgroundImage: NetworkImage(imageUrl),),
                ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color: Colors.white,),
                  title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                  title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                  title: Text("Email me",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
                ),
          ],
        ),
      ),
    );
  }
}
