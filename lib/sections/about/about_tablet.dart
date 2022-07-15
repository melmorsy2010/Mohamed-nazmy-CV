import 'package:flutter/foundation.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/utils/work_utils.dart';

import 'package:folio/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/tech_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Me',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Get to know me :)',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Who am I?",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Positions I worked in:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: AppTheme.c!.primary,
                    size: AppDimensions.normalize(6),
                  ),
                  Text(
                    " Customer Service ",
                    style: AppText.l1b,
                  ),
                  Icon(
                    Icons.play_arrow,
                    color: AppTheme.c!.primary,
                    size: AppDimensions.normalize(6),
                  ),
                  Text(
                    " Sales officer ",
                    style: AppText.l1b,
                  ),
                  Icon(
                    Icons.play_arrow,
                    color: AppTheme.c!.primary,
                    size: AppDimensions.normalize(6),
                  ),
                  Text(
                    " Teller ",
                    style: AppText.l1b,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(
                    Icons.play_arrow,
                    color: AppTheme.c!.primary,
                    size: AppDimensions.normalize(6),
                  ),
                  Text(
                    " BMVIP Relationship Manager ",
                    style: AppText.l1b,
                  ),
                  Icon(
                    Icons.play_arrow,
                    color: AppTheme.c!.primary,
                    size: AppDimensions.normalize(6),
                  ),
                  Text(
                    " Business Analyst ",
                    style: AppText.l1b,
                  ),
                ],
              ),
            ],
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutMeData(
                    data: "Name",
                    information: "Mohamed Nazmy",
                  ),
                  AboutMeData(
                    data: "Age",
                    information: "29",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AboutMeData(
                    data: "Email",
                    information: "melmorsy@banquemisr.com",
                  ),
                  AboutMeData(
                    data: "From",
                    information: "Cairo, Egypt",
                  ),
                ],
              ),
            ],
          ),
          Space.y1!,
          Row(
            children: [

              Space.x!,

              OutlinedButton(
                  child: const Text("Resume"),
                  onPressed: () {
                    kIsWeb
                        ? html.window.open(StaticUtils.resume, "pdf")
                        : openURL(StaticUtils.resume);
                  }),

            ],
          )
        ],
      ),
    );
  }
}
