import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://scontent.fsyq2-1.fna.fbcdn.net/v/t1.0-1/p160x160/15401008_1329617000422069_7908804601273415718_n.jpg?_nc_cat=102&_nc_oc=AQljCjJC8myrndV_KN5yAyVKufvD161xtFCTGCtR21inPdvar5Ky7X6gHxCEYjzCCM0&_nc_ht=scontent.fsyq2-1.fna&oh=6ab0daf67e9a86bf95a1e9da9beb2790&oe=5DF81324"),
              radius: 25.0,
            ),
          ),
          
          Container(
            margin: EdgeInsets.only( right: 10.0),
            child: CircleAvatar(
              child: Text("EL",style: TextStyle( color: Colors.white),),
              backgroundColor: Colors.deepOrange,
            )
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://scontent.fsyq2-1.fna.fbcdn.net/v/t1.0-9/34750905_1866161753404271_7050676140553273344_n.jpg?_nc_cat=104&_nc_oc=AQkjjZMw_n1f_rUw-Gvy-EKZ-tgMAA--y9hBIps7cPHqsSZZdfAL-12qqmMcIEpRmtI&_nc_ht=scontent.fsyq2-1.fna&oh=ea91e6a750de861c01638a4e117410d8&oe=5E0E3E99"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration( milliseconds: 200 ),
        ),
      ),
    );
  }
}