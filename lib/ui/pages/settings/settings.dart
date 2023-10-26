import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:networking_mic/ui/pages/settings/constants.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchvalue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: Text(
          "Settings",
          style: GoogleFonts.poppins(
              fontSize: 30, color: textColor, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              iconSize: 40,
              color: textColor,
              onPressed: () {},
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Account",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 130,
                decoration: BoxDecoration(
                    color: container, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          constraints:
                              BoxConstraints(maxWidth: 72, maxHeight: 72),
                          child: Image.asset("assets/icons/profile.png")),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rick Astley",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: textColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "21ABC1234",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Color.fromRGBO(179, 179, 179, 1),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: textColor,
                        size: 28,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Privacy",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: container, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.lock_open,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Text(
                            "Account Privacy",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.block_rounded,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Text(
                            "Blocked",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.45,
                          ),
                          Text(
                            "2",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: subtext),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.block_rounded,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Text(
                            "idk",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.93,
                          ),
                          Text(
                            "10",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: subtext),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.block_rounded,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),
                          Text(
                            "idk",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.89,
                          ),
                          Text(
                            "2",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: subtext),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Notifications",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: container, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pause All",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          CupertinoSwitch(
                            activeColor: textColor,
                            value: _switchvalue,
                            onChanged: (value) {
                              setState(() {
                                _switchvalue = value;
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Text(
                            "Customize",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.8,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Feedback and Support",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
