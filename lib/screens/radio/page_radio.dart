import 'package:flutter/material.dart';

import '../../core/assets/App_assets.dart';

class PageRadio extends StatefulWidget {
  const PageRadio({super.key});

  @override
  State<PageRadio> createState() => _PageRadioState();
}

class _PageRadioState extends State<PageRadio> {
  bool isRadioSelected = true;

  final List<String> radioName = [
    "Radio Ebrahim AL-Akdar",
    "Radio Al-Qaria Yassen",
    "Radio Ahmed Al-trabulsi",
    "Radio Addokali Mohammad Alalim",
  ];
  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.radio_screen, fit: BoxFit.cover),
          ),


          Column(
            children: [
              const SizedBox(height: 15),
              Image.asset(AppAssets.Mosque_splash, height: 80), // صورة الجامع
              Positioned(
                top: 5,
                left: 40,
                child: Image.asset(AppAssets.Islami, height: 35),
              ),
              const SizedBox(height: 20),

              Row(
                children: [

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isRadioSelected = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10),
                        height: 40,
                        decoration: BoxDecoration(

                          color: isRadioSelected
                              ? Color(0xFFE2C08D)
                              : Colors.black54,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Radio",
                          style: TextStyle(
                            color: isRadioSelected
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 6),

                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isRadioSelected = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20, bottom: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: !isRadioSelected
                              ? Color(0xFFE2C08D)
                              : Colors.black54,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Reciters",
                          style: TextStyle(
                            color: !isRadioSelected
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: radioName.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 94,
                      margin: const EdgeInsets.only(bottom: 6),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xffE2BE7F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            radioName[index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.play_arrow,color: Colors.black, size: 40),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 20),
                              IconButton(
                                icon: const Icon(Icons.volume_up,color: Colors.black, size: 25),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
    );
  }
}
