import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:networking_mic/ui/pages/settings/constants.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  bool _switchvalue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
            backgroundColor: background,
            leading: IconButton(
              alignment: Alignment.bottomCenter,
              icon: Icon(Icons.close, color: textColor, size: 30),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "Account Privacy",
              style: GoogleFonts.poppins(
                  color: textColor, fontSize: 30, fontWeight: FontWeight.w700),
            )),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Private Account",
                    style: GoogleFonts.poppins(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: textColor,
                      value: _switchvalue,
                      onChanged: (value) {
                        setState(() {
                          _switchvalue = value;
                        });
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.left,
                "When your account is public, your profile and posts can be seen by anyone, on or off VIT+, even if they don’t have a VIT+ account.\n\nWhen your account is private, only the followers you approve can see what you share, including your photos or videos on hashtag and club pages, and your followers and following lists.",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
