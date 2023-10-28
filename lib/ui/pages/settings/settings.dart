import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:networking_mic/ui/pages/settings/account_privacy.dart';
import 'package:networking_mic/ui/pages/settings/account_settings.dart';
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
        leading: IconButton(
            color: textColor,
            iconSize: 24,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: (() => Navigator.of(context).pop())),
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
              onPressed: () {
                showModalBottomSheet(
                    showDragHandle: true,
                    backgroundColor: container,
                    context: context,
                    builder: ((context) {
                      return Wrap(
                        children: [
                          ListTile(
                            leading:
                                const Icon(Icons.settings, color: textColor),
                            title: Text(
                              "Settings",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(Icons.pie_chart_rounded,
                                color: textColor),
                            title: Text(
                              "Insights",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(Icons.qr_code_2_rounded,
                                color: textColor),
                            title: Text(
                              "QR Code",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          ListTile(
                            leading:
                                const Icon(Icons.history, color: textColor),
                            title: Text(
                              "Your Activity",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      );
                    }));
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Your Account",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                splashColor: background,
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: ((context) => const AccountSettings())));
                },
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: container,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            constraints: const BoxConstraints(
                                maxWidth: 72, maxHeight: 72),
                            child: Image.asset("assets/icons/profile.png")),
                        const SizedBox(
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
                                  color: const Color.fromRGBO(179, 179, 179, 1),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.6,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: textColor,
                          size: 28,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Privacy",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
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
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: ((context) => const Privacy()))),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lock_open,
                              color: textColor,
                              size: 32,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 15,
                            ),
                            Text(
                              "Account Privacy",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4.2,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: textColor,
                              size: 26,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.block_rounded,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
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
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.block_rounded,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
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
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: textColor,
                            size: 26,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.block_rounded,
                            color: textColor,
                            size: 32,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 15,
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
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
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
              const SizedBox(
                height: 8,
              ),
              Text(
                "Notifications",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
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
                          Transform.scale(
                            scale: 0.5,
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
                      const SizedBox(
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
                            width: MediaQuery.of(context).size.width / 1.89,
                          ),
                          const Icon(
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
              const SizedBox(
                height: 8,
              ),
              Text(
                "Feedback and Support",
                style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: container, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Report a problem",
                          style: GoogleFonts.poppins(
                              color: textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.77,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: textColor,
                          size: 26,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "Feedback",
                          style: GoogleFonts.poppins(
                              color: textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.78,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: textColor,
                          size: 26,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          "Help",
                          style: GoogleFonts.poppins(
                              color: textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.43,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: textColor,
                          size: 26,
                        )
                      ],
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
