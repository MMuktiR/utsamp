import 'package:flutter/material.dart';
import 'package:utsamp/dashboard.dart';

class Profile extends StatelessWidget {

  final double profileHeight = 144;
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final top = profileHeight / 1.2;
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
          Text('Profile', style: TextStyle(color: Colors.white),),
          SizedBox(width: 200,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Dashboard()
                 ));
               },
               style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5)
                        ),
              child: Icon(Icons.dashboard, color: Color.fromARGB(255, 20, 28, 44), size: 35,),
             ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 20, 28, 44),
      automaticallyImplyLeading: false,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          buildCoverImage(),
          Positioned(
            top: top,
            child: buildProfileImage(),
          ),
          Positioned(
            top: top + profileHeight / 2 + 100, // Adjust the top position as needed
            left: 16, // Adjust the left position as needed
            right: 16, // Adjust the right position as needed
            child: buildProfileInfo(),
          ),
        ],
      ),
    );
  }
  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset('assets/images/dragon.jpg'),
      );
  
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage('assets/images/me.jpg'),
      );
  
  Widget buildProfileInfo() {
    return Column(
      children: [
        Text(
          'Muhammad Mukti Rimawan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '21670078',
          style: TextStyle(
            fontSize: 18
          ),
          ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email: muhammadmuktirimawan@gmail.com'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone: 08978227479'),
        ),
        ListTile(
          leading: Icon(Icons.smart_display_rounded),
          title: Text('Youtube: https://www.youtube.com/@needexp'),
        ),
      ],
    );
  }
}