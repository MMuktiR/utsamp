import 'package:flutter/material.dart';
import 'package:utsamp/main.dart';
import 'package:utsamp/profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        children: [
          Text('Dashboard', style: TextStyle(color: Colors.white)),
          SizedBox(width: 150,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApp()
                 ));
               },
               style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(5)
                        ),
              child: Icon(Icons.logout_rounded, color: Color.fromARGB(255, 20, 28, 44), size: 35,),
             ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 20, 28, 44),
      automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text('Menu', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          Container(
            height: 125,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Color.fromARGB(255, 196, 201, 228).withOpacity(0.7),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Profile()
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10)
                        ),
                        child: Icon(Icons.account_circle_sharp, size: 55, color: Colors.black,),
                      ),
                          ),
                          Text('Profile', style: TextStyle(fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Color.fromARGB(255, 196, 201, 228).withOpacity(0.7),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10)
                        ),
                        child: Icon(Icons.calendar_month, size: 55, color: Colors.black,),
                      ),
                          ),
                          Text('Calendar', style: TextStyle(fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Color.fromARGB(255, 196, 201, 228).withOpacity(0.7),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10)
                        ),
                        child: Icon(Icons.content_paste, size: 55, color: Colors.black,),
                      ),
                          ),
                          Text('Notepad', style: TextStyle(fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Color.fromARGB(255, 196, 201, 228).withOpacity(0.7),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10)
                        ),
                        child: Icon(Icons.credit_card_rounded, size: 55, color: Colors.black,),
                      ),
                          ),
                          Text('Credit', style: TextStyle(fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Color.fromARGB(255, 196, 201, 228).withOpacity(0.7),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                        onPressed: null,
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10)
                        ),
                        child: Icon(Icons.help_rounded, size: 55, color: Colors.black,),
                      ),
                          ),
                          Text('Help', style: TextStyle(fontWeight: FontWeight.w900),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Friends',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          FriendList(),
        ],
      ),
    );
  }
}

class FriendList extends StatelessWidget {
  final List<String> avatarImages = [
    'assets/images/date.jpg',
    'assets/images/dojima.jpg',
    'assets/images/kashiwagi.jpg',
    'assets/images/kazama.jpg',
    'assets/images/kazuki.jpg',
    'assets/images/kiryu.jpg',
    'assets/images/lee.jpg',
    'assets/images/majima.jpg',
    'assets/images/makimura.jpg',
    'assets/images/nishiki.jpg',
    'assets/images/nishitani.jpg',
    'assets/images/oda.jpg',
    'assets/images/sera.jpg',
    'assets/images/shimano.jpg',
    'assets/images/takashi.jpg',
    'assets/images/yumi.jpg',
  ];

  final List<String> friendNames = [
    'Date',
    'Dojima',
    'Kashiwagi',
    'Kazama',
    'Kazuki',
    'Kiryu',
    'Lee',
    'Majima',
    'Makimura',
    'Nishiki',
    'Nishitani',
    'Oda',
    'Sera',
    'Shimano',
    'Takashi',
    'Yumi',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: avatarImages.length,
          itemBuilder: (context, index) {
            return Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 150,
                  width: 150,
                  color: Color.fromARGB(255, 196, 201, 228).withOpacity(0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(avatarImages[index]),
                      ),
                      SizedBox(height: 8),
                      Text(
                        friendNames[index], // Use the friendNames list
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



