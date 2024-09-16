import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1B1A1A),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                      child: Image.asset(
                        "assets/images/img_rectangle_7.png",
                        height: 370,
                        width: double.maxFinite,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildGhabaRow(context),
                  SizedBox(height: 34),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Color(0XFFB6B6B6),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  _buildTimeRow(context),
                  SizedBox(height: 42),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          height: 26,
                          width: 26,
                          child: SvgPicture.asset(
                            "assets/images/img_hicon_bold_previous.svg",
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(
                            minHeight: 72,
                            minWidth: 72,
                          ),
                          padding: EdgeInsets.all(0),
                          icon: Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Color(0XFF42C73B),
                              borderRadius: BorderRadius.circular(
                                36,
                              ),
                            ),
                            padding: EdgeInsets.all(22),
                            child: SvgPicture.asset(
                              "assets/images/img_hicon_bold_pause.svg",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          height: 26,
                          width: 26,
                          child: SvgPicture.asset(
                            "assets/images/img_hicon_bold_next.svg",
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: SvgPicture.asset(
                      "assets/images/img_hicon_bold_left_30x30.svg",
                    ),
                  ),
                  Text(
                    "Reviews",
                    style: TextStyle(
                      color: Color(0XFFB8B8B8),
                      fontSize: 14,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 78,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leadingWidth: 64,
      leading: Padding(
        padding: EdgeInsets.only(
          left: 32,
          top: 12,
          bottom: 12,
        ),
        child: IconButton(
          onPressed: () {},
          constraints: BoxConstraints(
            minHeight: 32,
            minWidth: 32,
          ),
          padding: EdgeInsets.all(0),
          icon: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Color(0X0AFFFFFF),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            padding: EdgeInsets.all(4),
            child: SvgPicture.asset(
              "assets/images/img_hicon_bold_left.svg",
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        "Now performing",
        style: TextStyle(
          color: Color(0XFFDDDDDD),
          fontSize: 18,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            top: 18,
            right: 44,
            bottom: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Color(0XFFDDDDDD),
                  borderRadius: BorderRadius.circular(
                    1,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Color(0XFFDDDDDD),
                  borderRadius: BorderRadius.circular(
                    1,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Color(0XFFDDDDDD),
                  borderRadius: BorderRadius.circular(
                    1,
                  ),
                ),
              )
            ],
          ),
        )
      ],
      child: Padding(
        padding: EdgeInsets.only(
          left: 32,
          top: 12,
          bottom: 12,
        ),
        child: IconButton(
          onPressed: () {},
          constraints: BoxConstraints(
            minHeight: 32,
            minWidth: 32,
          ),
          padding: EdgeInsets.all(0),
          icon: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Color(0X0AFFFFFF),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            padding: EdgeInsets.all(4),
            child: SvgPicture.asset(
              "assets/images/img_hicon_bold_left.svg",
            ),
          ),
          child: Text(
            "Now performing",
            style: TextStyle(
              color: Color(0XFFDDDDDD),
              fontSize: 18,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w700,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 18,
                right: 44,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 3,
                    decoration: BoxDecoration(
                      color: Color(0XFFDDDDDD),
                      borderRadius: BorderRadius.circular(
                        1,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 3,
                    width: 3,
                    decoration: BoxDecoration(
                      color: Color(0XFFDDDDDD),
                      borderRadius: BorderRadius.circular(
                        1,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    height: 3,
                    width: 3,
                    decoration: BoxDecoration(
                      color: Color(0XFFDDDDDD),
                      borderRadius: BorderRadius.circular(
                        1,
                      ),
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
  Widget _buildGhabaRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ghaba",
                    style: TextStyle(
                      color: Color(0XFFDFDFDF),
                      fontSize: 20,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Marwan Pablo",
                    style: TextStyle(
                      color: Color(0XFFB9B9B9),
                      fontSize: 20,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              child: Image.asset(
                "assets/images/img_868078_200_1.png",
                height: 54,
                width: 44,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "2;25",
            style: TextStyle(
              color: Color(0XFF868686),
              fontSize: 12,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "4:02",
            style: TextStyle(
              color: Color(0XFF868686),
              fontSize: 12,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
