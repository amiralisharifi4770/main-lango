import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/local_path.dart';
import 'package:lango/config/text_style.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.dashboardColor,
      padding: CustomEdge.regular,
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                'Dashboard',
                style: CustomTextStyle.title(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(LocalPath.personIcon, width: 30),
              ),
            ],
          ),
          CustomEdge.vSeprator,
          Container(
            padding: CustomEdge.regular,
            decoration: BoxDecoration(
              color: CustomColors.background,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UNTIL NEXT CLASS',
                      style: CustomTextStyle.title(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.mutedForground,
                      ),
                    ),
                    CustomEdge.vSeprator,
                    Text(
                      DateTime.now()
                          .toPersianDate(
                            showTime: true,
                            showTimeSecond: true,
                            twoDigits: true,
                          )
                          .toString(),
                      style: CustomTextStyle.title(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                CircularProgressIndicator(
                  value: .6,
                  backgroundColor: CustomColors.primaryOverlay,
                  color: CustomColors.primary,
                  constraints: BoxConstraints(minHeight: 70, minWidth: 70),
                  strokeWidth: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
