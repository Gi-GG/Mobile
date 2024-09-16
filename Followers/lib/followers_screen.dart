import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({Key? key})
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
              _buildStackFollowers(context),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Neutron Followed By ".toUpperCase(),
                        style: TextStyle(
                          color: Color(0XFFD5D5D5),
                          fontSize: 15,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 12),
                      _buildFollowersList(context)
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
  Widget _buildStackFollowers(BuildContext context) {
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
                        margin: EdgeInsets.only(bottom: 16),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 26,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/img_group_40.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6),
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
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                "@Ibrahimnafea89",
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
                                  Padding(
                                    child: Image.asset(
                                      "assets/images/img_verified_sign_png_photo.png",
                                      height: 34,
                                      width: 34,
                                    ),
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
                Text(
                  "Followers",
                  style: TextStyle(
                    color: Color(0XFFA1A1A1),
                    fontSize: 14,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w400,
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
  Widget _buildFollowersList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return FollowerslistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      height: 72,
      width: double.maxFinite,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 44),
        decoration: BoxDecoration(
          color: Color(0XFF343434),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                        Padding(
                          padding: EdgeInsets.only(
                            left: 62,
                            bottom: 2,
                          ),
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                              "assets/images/img_hicon_outline_24x24.svg",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: SvgPicture.asset(
                              "assets/images/img_hicon_linear.svg",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 4,
                                  width: 22,
                                  margin: EdgeInsets.only(right: 2),
                                  decoration: BoxDecoration(
                                    color: Color(0XFF42C73B),
                                    borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(2),
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
                        )
                      ],
                    ),
                  )
                ],
              ),
              label: '',
            )
          ],
        ),
      ),
    );
  }
}

class FollowerslistItemWidget extends StatelessWidget {
  const FollowerslistItemWidget({Key? key})
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
              28,
            ),
            child: Image.asset(
              "assets/images/img_rectangle_16.png",
              height: 56,
              width: 58,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GIGG",
                  style: TextStyle(
                    color: Color(0XFFE3E3E3),
                    fontSize: 16,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "@GiggGuider",
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
        SizedBox(width: 12),
        _buildFollowButtonGigg(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildFollowButtonGigg(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 30,
      margin: EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF42C73B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
        ),
        onPressed: () {},
        child: Text(
          "Follow",
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 19.571430206298828,
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
