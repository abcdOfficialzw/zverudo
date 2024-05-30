import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zverudo/app/love_modal.dart';
import 'package:zverudo/utils/widgets/expanded_primary_button.dart';

import '../utils/constants/dimens.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Dimens.padding.normal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/undraw_appreciate_it_re_yc8h (1).svg",
              width: 200,
            ),
            SizedBox(height: Dimens.spacing.extremeSpacing),
            ExpandedPrimaryButton(
              "Click me please 😉",
              onPressed: () => showModalBottomSheet(
                  showDragHandle: true,
                  context: context,
                  builder: (context) {
                    return const LoveModal();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
