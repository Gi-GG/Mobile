import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReplyScreen extends StatelessWidget {
  const ReplyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1B1A1A),
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 8,
            top: 24,
            right: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserComments(context),
              SizedBox(height: 22),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 170,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0XFF2B2B2B),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    border: Border.all(
                      color: Color(0X19FFFFFF),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          child: Image.asset(
                            "assets/images/img_ellipse_1.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: _buildMohamedComment(
                            context,
                            userName: "Neutron",
                            userLastActive: "50 min ago",
                            userStatus: "كسم رأيك 👾",
                            userEyesText: "Your Eyes",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 188,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0XFF2B2B2B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        border: Border.all(
                          color: Color(0X19FFFFFF),
                          width: 1.01,
                        ),
                      ),
                      width: double.maxFinite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              child: Image.asset(
                                "assets/images/img_ellipse_1_20x20.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: _buildMohamedComment(
                                context,
                                userName: "Mohamed",
                                userLastActive: "21m ago",
                                userStatus: "كسم جمالك يا ملك 👾",
                                userEyesText: "Your Eyes",
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4)
            ],
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
        "Comments",
        style: TextStyle(
          color: Color(0XFFDDDDDD),
          fontSize: 18,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
      ),
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
            "Comments",
            style: TextStyle(
              color: Color(0XFFDDDDDD),
              fontSize: 18,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserComments(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: Color(0XFF333333),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Container(
          height: 238,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(0XFF333333),
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0X4C4F4F4F),
                        borderRadius: BorderRadius.circular(
                          22,
                        ),
                      ),
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Padding(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                              child: Image.asset(
                                "assets/images/img_rectangle_38.png",
                                height: 36,
                                width: 38,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Youssef Hassany",
                                    style: TextStyle(
                                      color: Color(0XFFFFFFFF),
                                      fontSize: 15.298968315124512,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "@youssef Hassany",
                                    style: TextStyle(
                                      color: Color(0XFFE0E0E0),
                                      fontSize: 10.199312210083008,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 94,
                            margin: EdgeInsets.only(left: 2),
                            padding: EdgeInsets.symmetric(horizontal: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                                SizedBox(height: 2),
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
                                SizedBox(height: 2),
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
                      ),
                    ),
                    SizedBox(height: 20),
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemSize: 10,
                      itemCount: 5,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) {},
                      itemBuilder: (context, _) {
                        return Icon(
                          Icons.star,
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Padding(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                              child: Image.asset(
                                "assets/images/img_avatar_en_x.png",
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "Your Eyes By Travis Scott",
                              style: TextStyle(
                                color: Color(0XFFBDBDBD),
                                fontSize: 8,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Oct 13, 2023",
                            style: TextStyle(
                              color: Color(0XFF828282),
                              fontSize: 10.199312210083008,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
                    Padding(
                      padding: EdgeInsets.only(left: 98),
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          "assets/images/img_message_notification_square.svg",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0XFF333333),
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0X4C4F4F4F),
                        borderRadius: BorderRadius.circular(
                          22,
                        ),
                      ),
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Padding(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                              child: Image.asset(
                                "assets/images/img_rectangle_38.png",
                                height: 36,
                                width: 38,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Youssef Hassany",
                                  style: TextStyle(
                                    color: Color(0XFFFFFFFF),
                                    fontSize: 15.298968315124512,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "@youssef Hassany",
                                  style: TextStyle(
                                    color: Color(0XFFE0E0E0),
                                    fontSize: 10.199312210083008,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: SvgPicture.asset(
                                    "assets/images/img_star.svg",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: SvgPicture.asset(
                                      "assets/images/img_star.svg",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: SvgPicture.asset(
                                      "assets/images/img_star.svg",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: SvgPicture.asset(
                                      "assets/images/img_star.svg",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: SvgPicture.asset(
                                      "assets/images/img_star_10x10.svg",
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "انا مش فاهم ايه القرف ابن الاحبه دا اللي مكتوب ودين الله بس بديه الريت دا عشان هو زنجي زيي وانا بحب الزنوج اوي اوي اوي اوي اوي اوي يارب يتجوز البت ال 16 سنه ام شعر اصفر وطيز كبيره دي ",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 12.749139785766602,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        child: Image.asset(
                                          "assets/images/img_avatar_en_x.png",
                                          height: 10,
                                          width: 10,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Text(
                                          "Your Eyes By Travis Scott",
                                          style: TextStyle(
                                            color: Color(0XFFBDBDBD),
                                            fontSize: 8,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Oct 13, 2023",
                                  style: TextStyle(
                                    color: Color(0XFF828282),
                                    fontSize: 10.199312210083008,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 98),
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          "assets/images/img_message_notification_square.svg",
                        ),
                      ),
                    ),
                    SizedBox(height: 8)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMohamedComment(
    BuildContext context, {
    required String userName,
    required String userLastActive,
    required String userStatus,
    required String userEyesText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Text(
                userName,
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(
                  userLastActive,
                  style: TextStyle(
                    color: Color(0X99FFFFFF),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 2),
        Text(
          userStatus,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 2),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  border: Border.all(
                    color: Color(0XFFE53B3B),
                    width: 1,
                  ),
                ),
                child: Text(
                  userEyesText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XCCFFFFFF),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Image.asset(
                  "assets/images/img_rectangle.png",
                  height: 12,
                  width: 12,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: SizedBox(
                  height: 16,
                  width: 16,
                  child: SvgPicture.asset(
                    "assets/images/img_more.svg",
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
