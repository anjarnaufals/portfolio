import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/string/string_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ReachMeWidget extends StatelessWidget {
  const ReachMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Wrap(
        runSpacing: 30,
        spacing: 30,
        children: [
          TextButton(
            onPressed: () {
              launchUrlString("https://discord.com/users/411787229564895233");
            },
            child: SvgPicture.asset(
              Assets.discordIcon,
              height: 50,
            ),
          ),
          TextButton(
            onPressed: () {
              launchUrlString(
                "mailto:$myEmail?subject=Greetings&body=Hello%20Anjar",
              );
            },
            child: SvgPicture.asset(
              Assets.gmailIcon,
              height: 50,
            ),
          ),
          TextButton(
            onPressed: () {
              launchUrlString("https://www.linkedin.com/in/anjarnaufals/");
            },
            child: SvgPicture.asset(
              Assets.linkedinIcon,
              height: 50,
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     launchUrlString("https://www.instagram.com/anjarnaufals/");
          //   },
          //   child: SvgPicture.asset(
          //     StringAsset.instagramIcon,
          //     height: 50,
          //   ),
          // ),
        ],
      ),
    );
  }
}
