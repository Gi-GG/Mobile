import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1B1A1A),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFollowersSection(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          "concerts Went To ".toUpperCase(),
                          style: TextStyle(
                            color: Color(0XFFD5D5D5),
                            fontSize: 15,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      _buildConcertsList(context),
                      SizedBox(height: 16),
                      _buildNavigationRow(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowersSection(BuildContext context) {
    return SizedBox(
      height: 324,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0XFF2B2B2B),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 278,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: Image.asset(
                            "assets/images/img_union.png",
                            height: 210,
                            width: 102,
                          ),
                        ),
                      ),
                      Container(
                        width: 168,
                        margin: EdgeInsets.only(bottom: 14),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 26,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/img_group_5.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  46,
                                ),
                                child: Image.asset(
                                  "assets/images/img_rectangle_29.png",
                                  height: 92,
                                  width: 92,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Text(
                                "@Neutron1n",
                                style: TextStyle(
                                  color: Color(0XFFD7D4D4),
                                  fontSize: 12,
                                  fontFamily: 'Satoshi',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Neutron",
                                    style: TextStyle(
                                      color: Color(0XFFFFFFFF),
                                      fontSize: 20,
                                      fontFamily: 'Satoshi',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/img_verified_sign_png_photo.png",
                                    height: 34,
                                    width: 34,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      AppBar(
                        elevation: 0,
                        toolbarHeight: 62,
                        backgroundColor: Colors.transparent,
                        automaticallyImplyLeading: false,
                        leadingWidth: 62,
                        leading: Padding(
                          padding: EdgeInsets.only(left: 30),
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
                              padding: EdgeInsets.all(2),
                              child: SvgPicture.asset(
                                "assets/images/img_hicon_bold_left.svg",
                              ),
                            ),
                          ),
                        ),
                        centerTitle: true,
                        title: Text(
                          "Profile",
                          style: TextStyle(
                            color: Color(0XFFE6E6E6),
                            fontSize: 17,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        actions: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 5,
                              right: 40,
                              bottom: 9,
                            ),
                            child: SizedBox(
                              height: 18,
                              width: 3,
                              child: SvgPicture.asset(
                                "assets/images/img_group_29.svg",
                              ),
                            ),
                          )
                        ],
                        child: Padding(
                          padding: EdgeInsets.only(left: 30),
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
                              padding: EdgeInsets.all(2),
                              child: SvgPicture.asset(
                                "assets/images/img_hicon_bold_left.svg",
                              ),
                            ),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                color: Color(0XFFE6E6E6),
                                fontSize: 17,
                                fontFamily: 'Satoshi',
                                fontWeight: FontWeight.w700,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  right: 40,
                                  bottom: 9,
                                ),
                                child: SizedBox(
                                  height: 18,
                                  width: 3,
                                  child: SvgPicture.asset(
                                    "assets/images/img_group_29.svg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 108),
                          child: Text(
                            "10",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 98),
                          child: Text(
                            "10",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 20,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          child: Image.asset(
                            "assets/images/img_union_174x60.png",
                            height: 174,
                            width: 60,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 88,
                    right: 80,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Color(0XFFA1A1A1),
                          fontSize: 14,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28),
                        child: Text(
                          "concerts",
                          style: TextStyle(
                            color: Color(0XFFA1A1A1),
                            fontSize: 14,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Following",
                          style: TextStyle(
                            color: Color(0XFFA1A1A1),
                            fontSize: 14,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              child: Image.asset(
                "assets/images/img_union_200x68.png",
                height: 200,
                width: 68,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConcertsList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28,
        right: 34,
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return ConcertslistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 44),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            child: SizedBox(
              height: 28,
              width: 28,
              child: SvgPicture.asset(
                "assets/images/img_hicon_outline.svg",
              ),
            ),
          ),
          Spacer(),
          Padding(
            child: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                "assets/images/img_hicon_outline_24x24.svg",
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 44,
              width: 230,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Padding(
                    child: Image.asset(
                      "assets/images/img_notifications_o.png",
                      height: 44,
                      width: 166,
                    ),
                  ),
                  IntrinsicHeight(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 28,
                        width: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: SvgPicture.asset(
                                    "assets/images/img_hicon_linear.svg",
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              child: SizedBox(
                                height: 28,
                                width: 28,
                                child: SvgPicture.asset(
                                  "assets/images/img_hicon_outline_28x28.svg",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      height: 72,
      width: double.maxFinite,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        decoration: BoxDecoration(
          color: Color(0XFF343434),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
    );
  }
}

class ConcertslistItemWidget extends StatelessWidget {
  const ConcertslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              14,
            ),
            child: Image.asset(
              "assets/images/img_rectangle_16.png",
              height: 56,
              width: 58,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Happier Than Ever ",
                  style: TextStyle(
                    color: Color(0XFFE3E3E3),
                    fontSize: 16,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Billie Eilish",
                  style: TextStyle(
                    color: Color(0XFFE3E3E3),
                    fontSize: 12,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 2,
            bottom: 14,
          ),
          child: Text(
            "5:33",
            style: TextStyle(
              color: Color(0XFFE3E3E3),
              fontSize: 15,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Spacer(),
        Container(
          height: 4,
          width: 4,
          margin: EdgeInsets.only(bottom: 24),
          decoration: BoxDecoration(
            color: Color(0XFFE4E4E4),
            borderRadius: BorderRadius.circular(
              2,
            ),
          ),
        ),
        Container(
          height: 4,
          width: 4,
          margin: EdgeInsets.only(
            left: 2,
            bottom: 22,
          ),
          decoration: BoxDecoration(
            color: Color(0XFFE4E4E4),
            borderRadius: BorderRadius.circular(
              2,
            ),
          ),
        ),
        Container(
          height: 4,
          width: 4,
          margin: EdgeInsets.only(
            left: 2,
            bottom: 22,
          ),
          decoration: BoxDecoration(
            color: Color(0XFFE4E4E4),
            borderRadius: BorderRadius.circular(
              2,
            ),
          ),
        )
      ],
    );
  }
}