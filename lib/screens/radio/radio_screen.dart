import 'package:flutter/material.dart';
import 'package:islami/screens/hadith/hadith.dart';
import 'package:islami/screens/qiran/quran.dart';
import 'package:islami/screens/radio/page_radio.dart';

/*
class RadioScreen extends StatelessWidget {
  RadioScreen({super.key});
final List<String>radioName=[
 "Radio Ebrahim AL-Akdar" ,
  "Radio Al-Qaria Yassen" ,
  "Radio Ahmed Al-trabulsi" ,
"Radio Addokali Mohammad Alalim"


];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
body: Stack(
  children: [

    Positioned.fill(child: Image.asset(AppAssets.radio_screen,
      fit: BoxFit.cover,),
    ),
    Positioned(top: 30, left: 40,child:  Image.asset(AppAssets.Mosque_splash)),
    Positioned(top: 110, left: 100, child: Image.asset(AppAssets.Islami)),
    
    
    ListView.builder(

        itemCount: radioName.length,

        itemBuilder:(context,index) {
          return Padding(padding: EdgeInsetsGeometry.all(8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.circular(15),),
           child :Center(
              child: Text(radioName[index],style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400),),
            )
          ),
          );
          
        })
  ],


),


  );
  }
 }*/
import '../sibha/sibha.dart';
import '../time/time.dart';

class RadioScreen extends StatefulWidget {
  RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  bool isRadioSelected = true;
  final List<String> radioName = [
    "Radio Ebrahim AL-Akdar",
    "Radio Al-Qaria Yassen",
    "Radio Ahmed Al-trabulsi",
    "Radio Addokali Mohammad Alalim",
  ];

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Quran(),
    Hadith(),
    Sebha(),
    PageRadio(),
    Time(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffE2BE7F),

        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/quran.png"),
              color: (_selectedIndex == 0) ? Colors.white : Colors.black,
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/hadith.png"),
              color: (_selectedIndex == 1) ? Colors.white : Colors.black,
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/sibha_icon.png"),
              color: (_selectedIndex == 2) ? Colors.white : Colors.black,
            ),
            label: 'Sebha',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.radio,
              color: (_selectedIndex == 3) ? Colors.white : Colors.black,
            ),
            label: 'Radio',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/time.png"),
              color: (_selectedIndex == 4) ? Colors.white : Colors.black,
            ),
            label: 'Time',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        //backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
