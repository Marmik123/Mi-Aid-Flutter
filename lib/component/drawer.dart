import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/drawer/about.dart';
import 'package:miaid/view/drawer/privacy_and_policy.dart';
import 'package:miaid/view/drawer/terms_and_cond.dart';
import 'package:miaid/view/user/calling/call_history/call_history.dart';
import 'package:miaid/view/user/home_screen.dart';
import 'package:miaid/view/user/travel_care_packages/Travel_care_packages.dart';
import 'package:miaid/view/user/user_profile_screen/user_profile.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => UserProfileScreen(),
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              height: 70,
              width: 70,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.k0cbcc5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_auth.png'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'john Doe',
            style: GoogleFonts.rubik(
              color: AppColors.k010101,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.grey,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).home,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_home.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => UserProfileScreen(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).myProfile,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_profile.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => TravelCarePackages(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).travelCare,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_travelcare.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => CallHistory(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).callHistory,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_callhistory.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => TermsConditions(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).tandc,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_terms.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => PrivacyPolicy(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).privacy,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_privacy.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => AboutMiAid(),
                ),
              );
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).about,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_about.png'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showAlertDialog(context);
            },
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 23),
                child: Text(
                  S.of(context).logout,
                  style: GoogleFonts.rubik(
                    color: AppColors.kfa0020,
                    fontSize: 14,
                  ),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                child: Image(
                  image: AssetImage('assets/images/ic_sidebar_logout.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
