import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeaseNotificationScreen extends StatelessWidget {
  const TeaseNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 866,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 866,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFF3F3),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(66),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0X0A000000),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(
                            0,
                            20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 4,
                      top: 108,
                      right: 4,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/img_group_7.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildTimeSection(context),
                        SizedBox(height: 20),
                        _buildNotificationsSection(context),
                        SizedBox(height: 66)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16,
        right: 20,
      ),
      padding: EdgeInsets.only(left: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "12:5",
                    style: TextStyle(
                      color: Color(0XFF1E1E1E),
                      fontSize: 90,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: "3",
                    style: TextStyle(
                      color: Color(0XFF1E1E1E),
                      fontSize: 90,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 2),
          Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(),
            child: Text(
              "FRIDAY, FEBRUARY 17",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0XFF1E1E1E),
                fontSize: 18.819137573242188,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: Color(0XE02C2C2E),
              borderRadius: BorderRadius.circular(
                22,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/img_gigg_2.png",
                        height: 16,
                        width: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          "GIGG",
                          style: TextStyle(
                            color: Color(0XFF42C73B),
                            fontSize: 13.319999694824219,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        margin: EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          color: Color(0XFFCCC0C0),
                          borderRadius: BorderRadius.circular(
                            1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          "now",
                          style: TextStyle(
                            color: Color(0XFFA7A7A7),
                            fontSize: 13.319999694824219,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: SizedBox(
                          height: 4,
                          width: 6,
                          child: SvgPicture.asset(
                            "assets/images/img_arrow_down.svg",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Neutron !",
                              style: TextStyle(
                                color: Color(0XFFE1E1E1),
                                fontSize: 16.649999618530273,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "LIL Junior In Da TOWWWWN Performing His New ALbum Click To View Th Full Details ",
                              style: TextStyle(
                                color: Color(0XFFAEAEAE),
                                fontSize: 14.430000305175781,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Padding(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            14,
                          ),
                          child: Image.asset(
                            "assets/images/img_rectangle_7.png",
                            height: 38,
                            width: 38,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0XE02C2C2E),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              child: Image.asset(
                                "assets/images/img_gigg_2.png",
                                height: 16,
                                width: 16,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                "GIGG",
                                style: TextStyle(
                                  color: Color(0XFF42C73B),
                                  fontSize: 12.705883026123047,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              height: 3,
                              width: 3,
                              margin: EdgeInsets.only(left: 6),
                              decoration: BoxDecoration(
                                color: Color(0XFFCCC0C0),
                                borderRadius: BorderRadius.circular(
                                  1,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                "now",
                                style: TextStyle(
                                  color: Color(0XFFA7A7A7),
                                  fontSize: 12.705883026123047,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              child: SizedBox(
                                height: 16,
                                width: 16,
                                child: SvgPicture.asset(
                                  "assets/images/img_eva_arrow_ios_upward_fill.svg",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          left: 6,
                          right: 22,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi Neutron !",
                              style: TextStyle(
                                color: Color(0XFFE1E1E1),
                                fontSize: 15.882353782653809,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "LIL Junior In Da TOWWWWN Performing His New ALbum Click To View Th Full Details ",
                              style: TextStyle(
                                color: Color(0XFFAEAEAE),
                                fontSize: 13.7647066116333,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  26,
                                ),
                                child: Image.asset(
                                  "assets/images/img_rectangle_7_142x310.png",
                                  height: 142,
                                  width: double.maxFinite,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
