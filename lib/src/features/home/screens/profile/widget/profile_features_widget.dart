import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study_app/src/constants/colors.dart';
import 'package:flutter_study_app/src/constants/text_strings.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --- Settings ---
        Text(
          txtSettings,
          style: txtTheme.titleMedium,
        ),
        const SizedBox(height: 10.0),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blueAccent),
            child: const Icon(
              Icons.settings,
              color: lightColor500,
            ),
          ),
          title: Text(txtAccountSettings, style: txtTheme.labelMedium,),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkColor700,
          ),
        ),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blueAccent),
            child: const Icon(
              Icons.phonelink_setup_rounded,
              color: lightColor500,
            ),
          ),
          title: Text(txtSystemSettings, style: txtTheme.labelMedium,),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkColor700,
          ),
        ),
        const SizedBox(height: 10.0),
        const Divider(),
        const SizedBox(height: 10.0),
        // --- User Information ---
        Text(
          txtUserInformation,
          style: txtTheme.titleMedium,
        ),
        const SizedBox(height: 10.0),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blueAccent),
            child: const Icon(
              Icons.person_outline_rounded,
              color: lightColor500,
            ),
          ),
          title: Text(txtViewInfo, style: txtTheme.labelMedium,),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkColor700,
          ),
        ),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blueAccent),
            child: const Icon(
              Icons.checklist_rounded,
              color: lightColor500,
            ),
          ),
          title: Text(txtViewProgress, style: txtTheme.labelMedium,),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkColor700,
          ),
        ),
        const SizedBox(height: 10.0),
        const Divider(),
        const SizedBox(height: 10.0),
        // --- Upgrade your plan ---
        Text(
          txtUpgradePlan,
          style: txtTheme.titleMedium,
        ),
        const SizedBox(height: 10.0),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blueAccent),
            child: const Icon(
              Icons.view_timeline_outlined,
              color: lightColor500,
            ),
          ),
          title: Text(txtSeeMoreOptions, style: txtTheme.labelMedium,),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkColor700,
          ),
        ),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: blueAccent),
            child: const Icon(
              Icons.next_plan_outlined,
              color: lightColor500,
            ),
          ),
          title: Text(txtChooseYourPlan, style: txtTheme.labelMedium,),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkColor700,
          ),
        ),
      ],
    );
  }
}