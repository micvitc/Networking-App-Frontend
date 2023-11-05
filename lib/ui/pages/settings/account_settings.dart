import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:networking_mic/ui/pages/settings/constants.dart';

//bottomsheet for the settings

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
            titleSpacing: 10,
            leading: IconButton(
              alignment: Alignment.bottomCenter,
              icon: const Icon(Icons.close, color: textColor, size: 30),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: background,
            title: Text(
              "Account Settings",
              style: GoogleFonts.poppins(
                  color: textColor, fontSize: 30, fontWeight: FontWeight.w700),
            )),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Connected Accounts",
                  style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: container, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/git.png",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text("Github",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/linkedin.png",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text("LinkedIn",
                            style: GoogleFonts.poppins(
                                color: textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400))
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Password And Security",
                  style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
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
                        children: [
                          const Icon(
                            Icons.email_outlined,
                            color: textColor,
                            size: 26,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Change Email",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.shield_outlined,
                            color: textColor,
                            size: 26,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Change Password",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.lock,
                            color: textColor,
                            size: 26,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Two Factor Authentication",
                              style: GoogleFonts.poppins(
                                  color: textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Login",
                  style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    color: container, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Log Out 21ABC1234",
                        style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(255, 0, 0, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: textColor,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
