import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zverudo/utils/widgets/expanded_primary_button.dart';

import '../utils/constants/dimens.dart';

class LoveModal extends StatelessWidget {
  const LoveModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(Dimens.padding.normal),
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/undraw_together_re_a8x4 (1).svg",
              width: 200,
            ),
            SizedBox(height: Dimens.spacing.large),
            Text("I ❤️ U",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
                textAlign: TextAlign.center),
            SizedBox(height: Dimens.spacing.normal),
            Text("I love you more than you can ever imagine",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center),
            SizedBox(height: Dimens.spacing.large),
            ExpandedPrimaryButton("Call the love of your life", onPressed: () {
              launchUrl(
                Uri.parse(
                  "tel:+263787980222",
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
