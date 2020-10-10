import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/destination_carousel.dart';
import 'package:travel_app/hotel_carousel.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  int _currenTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child:Container(
       height: 60.0,
       width:60.0,
       decoration: BoxDecoration(
         color: _selectedIndex == index
           ? Theme.of(context).accentColor
           : Colors.grey[300],
         borderRadius: BorderRadius.circular(30.0),
       ),
       child: Icon(
        _icons[index],
        size: 25.0,
        color: _selectedIndex == index
           ? Theme.of(context).primaryColor
           : Colors.black26,
       ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What you would  like to find?',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
               _icons.asMap().entries.map(
                       (MapEntry map) => _buildIcon(map.key),
               ).toList(),
            ),
            SizedBox(height: 20.0,),
            DestinationCarousel(),
            SizedBox(height: 20.0,),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currenTab = value;
          });
        },
       currentIndex: _currenTab,
       items: [
         BottomNavigationBarItem(
       icon: Icon(
        Icons.search,
        size: 30.0,
        ),
        title: SizedBox.shrink()
       ),

         BottomNavigationBarItem(
             icon: Icon(
               Icons.payment,
               size: 30.0,
             ),
           title: SizedBox.shrink()
         ),

         BottomNavigationBarItem(
             icon: CircleAvatar(
               radius: 15.0,
               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRuu1tbGwAyMAWPUbMrRh2b4Tb3OBn7qQG4WA&usqp=CAU'),
             ),
             title: SizedBox.shrink()
         )
      ],
     ),
    );
  }
}
