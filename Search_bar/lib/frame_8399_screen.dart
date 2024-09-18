import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Frame8399Screen extends StatelessWidget {
  const Frame8399Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              color: Color(0XFF1B1A1A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  42,
                ),
              ),
              child: Container(
                height: 844,
                decoration: BoxDecoration(
                  color: Color(0XFF1B1A1A),
                  borderRadius: BorderRadius.circular(
                    42,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        child: Image.asset(
                          "assets/images/img_union.png",
                          height: 174,
                          width: 120,
                        ),
                      ),
                    ),
                    _buildAppBar(context),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Color(0XFF675D5D),
                        borderRadius: BorderRadius.circular(
                          24,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 32),
                          _buildSearchHeader(context),
                          SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Top results:",
                                style: TextStyle(
                                  color: Color(0XFF282828),
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 32),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: _buildProductDropdown(
                              context,
                              userImage: "assets/images/img_02.png",
                              userName: "Wegz Ahmed Ali ",
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: _buildProductDropdown(
                              context,
                              userImage: "assets/images/img_03_1.png",
                              userName: "Marwanpablo",
                            ),
                          ),
                          SizedBox(height: 40),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: _buildProductDropdown(
                              context,
                              userImage: "assets/images/img_04_1.png",
                              userName: "Marwan Mousa",
                            ),
                          ),
                          SizedBox(height: 32),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Artists",
                                  style: TextStyle(
                                    color: Color(0XFF282828),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Color(0XFF282828),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          _buildArtistColumn(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 88,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leadingWidth: 67,
      leading: Padding(
        padding: EdgeInsets.only(
          left: 35,
          top: 4,
          bottom: 24,
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
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/images/img_group_1.svg",
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: Row(
        children: [
          Image.asset(
            "assets/images/img_gigg_2.png",
            height: 60,
            width: 60,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4,
              bottom: 2,
            ),
            child: Text(
              "GIGG",
              style: TextStyle(
                color: Color(0XFF42C73B),
                fontSize: 40,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w900,
              ),
            ),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 35,
          top: 4,
          bottom: 24,
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
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/images/img_group_1.svg",
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/img_gigg_2.png",
                height: 60,
                width: 60,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4,
                  bottom: 2,
                ),
                child: Text(
                  "GIGG",
                  style: TextStyle(
                    color: Color(0XFF42C73B),
                    fontSize: 40,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(
          24,
        ),
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Marwan Pablo",
                      style: TextStyle(
                        color: Color(0XFFB6B6B6),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Row(
                      children: [
                        Text(
                          "Marwan",
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        VerticalDivider(
                          width: 1,
                          thickness: 1,
                          color: Color(0XFF282828),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Color(0XFF42C73B),
              borderRadius: BorderRadius.circular(
                16,
              ),
              border: Border.all(
                color: Color(0XFFC0DBFB),
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0X662280EF),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    4,
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArtistColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildArtistWrapper(
              context,
              userName: "Pablo",
              userConcerts: "170+ Concerts",
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.maxFinite,
            child: _buildArtistWrapper(
              context,
              userName: "Marawn Mousa",
              userConcerts: "110+ Concerts",
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0XFFF4F8FC),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wegz Ahmed Ali",
                  style: TextStyle(
                    color: Color(0XFF282828),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "30+ Concerts",
                    style: TextStyle(
                      color: Color(0X7F282828),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(
                      "assets/images/img_arrow_right.svg",
                    ),
                  ),
                )
              ],
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
      child: SizedBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 72,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 72,
                      width: 390,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 44),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      width: 116,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 4,
                                            width: 22,
                                            decoration: BoxDecoration(
                                              color: Color(0XFF42C73B),
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                bottom: Radius.circular(2),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  height: 28,
                                                  width: 28,
                                                  child: SvgPicture.asset(
                                                    "assets/images/img_hicon_outline.svg",
                                                  ),
                                                ),
                                                Padding(
                                                  child: SizedBox(
                                                    height: 24,
                                                    width: 24,
                                                    child: SvgPicture.asset(
                                                      "assets/images/img_hicon_outline_24x24.svg",
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    child: SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: SvgPicture.asset(
                                        "assets/images/img_hicon_linear.svg",
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
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              label: '',
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildProductDropdown(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            6,
          ),
          child: Image.asset(
            userImage,
            height: 40,
            width: 38,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Marwan",
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "pablo",
                  style: TextStyle(
                    color: Color(0XFF282828),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildArtistWrapper(
    BuildContext context, {
    required String userName,
    required String userConcerts,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0XFFF4F8FC),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userName,
            style: TextStyle(
              color: Color(0XFF282828),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              userConcerts,
              style: TextStyle(
                color: Color(0X7F282828),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          Padding(
            child: SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                "assets/images/img_arrow_right.svg",
              ),
            ),
          )
        ],
      ),
    );
  }
}
