import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
}

// ignore_for_file: must_be_immutable
class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1B1A1A),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNotificationStack(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),
                      _buildTabview(context),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                            controller: tabviewController,
                            children: [
                              HomeconcertsiniTabPage(),
                              HomeconcertsiniTabPage(),
                              HomeconcertsiniTabPage(),
                              HomeconcertsiniTabPage()
                            ],
                          ),
                        ),
                      )
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
  Widget _buildNotificationStack(BuildContext context) {
    return SizedBox(
      height: 216,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AppBar(
            elevation: 0,
            toolbarHeight: 64,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            leadingWidth: 62,
            leading: Padding(
              padding: EdgeInsets.only(
                left: 36,
                top: 16,
                bottom: 18,
              ),
              child: Image.asset(
                "assets/images/img_notifications_o.png",
                height: 26,
                width: 26,
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
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  top: 29,
                  right: 37,
                  bottom: 13,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      width: 3,
                      decoration: BoxDecoration(
                        color: Color(0XFFCFCFCF),
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
                        color: Color(0XFFCFCFCF),
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
                        color: Color(0XFFCFCFCF),
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
                left: 36,
                top: 16,
                bottom: 18,
              ),
              child: Image.asset(
                "assets/images/img_notifications_o.png",
                height: 26,
                width: 26,
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 29,
                        right: 37,
                        bottom: 13,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Color(0XFFCFCFCF),
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
                              color: Color(0XFFCFCFCF),
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
                              color: Color(0XFFCFCFCF),
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
            ),
          ),
          IntrinsicHeight(
            child: Container(
              height: 118,
              margin: EdgeInsets.only(
                left: 26,
                right: 26,
                bottom: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0XFF42C73B),
                borderRadius: BorderRadius.circular(
                  30,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New !",
                          style: TextStyle(
                            color: Color(0XFFFAFAFA),
                            fontSize: 10,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 78,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "aL nEYA ",
                                  style: TextStyle(
                                    color: Color(0XFFFAFAFA),
                                    fontSize: 19,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: "sINGLE",
                                  style: TextStyle(
                                    color: Color(0XFFFAFAFA),
                                    fontSize: 19,
                                    fontFamily: 'Satoshi',
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "lege-cy",
                          style: TextStyle(
                            color: Color(0XFFFAFAFA),
                            fontSize: 13,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/img_union.png",
                    height: 118,
                    width: 130,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  62,
                ),
                child: Image.asset(
                  "assets/images/img_.png",
                  height: 216,
                  width: 220,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: Color(0XFFDADADA),
        labelStyle: TextStyle(
          fontSize: 20,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: Color(0XFF606060),
        unselectedLabelStyle: TextStyle(
          fontSize: 20,
          fontFamily: 'Satoshi',
          fontWeight: FontWeight.w700,
        ),
        indicatorColor: Color(0XFF42C73B),
        tabs: [
          Tab(
            child: Text(
              "Concerts",
            ),
          ),
          Tab(
            child: Text(
              "Videos",
            ),
          ),
          Tab(
            child: Text(
              "Artists",
            ),
          ),
          Tab(
            child: Text(
              "Photos",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 4,
                    width: 22,
                    decoration: BoxDecoration(
                      color: Color(0XFF42C73B),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(2),
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 28,
                          width: 28,
                          child: SvgPicture.asset(
                            "assets/images/img_hicon_bold_home.svg",
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
                        ),
                        Padding(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child: SvgPicture.asset(
                              "assets/images/img_hicon_outline_28x28.svg",
                            ),
                          ),
                        ),
                        Padding(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child: SvgPicture.asset(
                              "assets/images/img_hicon_outline_1.svg",
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

class DubaitourlistItemWidget extends StatelessWidget {
  const DubaitourlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 146,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 194,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                      child: Image.asset(
                        "assets/images/img_rectangle_8.png",
                        height: 184,
                        width: double.maxFinite,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {},
                    constraints: BoxConstraints(
                      minHeight: 28,
                      minWidth: 28,
                    ),
                    padding: EdgeInsets.all(0),
                    icon: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color(0XFF2B2B2B),
                        borderRadius: BorderRadius.circular(
                          14,
                        ),
                      ),
                      padding: EdgeInsets.all(6),
                      child: SvgPicture.asset(
                        "assets/images/img_hicon_bold_play.svg",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Dubai Tour",
              style: TextStyle(
                color: Color(0XFFE1E1E1),
                fontSize: 16,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Wegz",
              style: TextStyle(
                color: Color(0XFFE1E1E1),
                fontSize: 14,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HiconboldlistItemWidget extends StatelessWidget {
  const HiconboldlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          constraints: BoxConstraints(
            minHeight: 36,
            minWidth: 36,
          ),
          padding: EdgeInsets.all(0),
          icon: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Color(0XFF42C73B),
              borderRadius: BorderRadius.circular(
                18,
              ),
            ),
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              "assets/images/img_hicon_bold_pause.svg",
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "W BASHOOT",
                  style: TextStyle(
                    color: Color(0XFFD5D5D5),
                    fontSize: 16,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Abo El Anwar",
                  style: TextStyle(
                    color: Color(0XFFD5D5D5),
                    fontSize: 12,
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
            padding: EdgeInsets.only(
              left: 24,
              bottom: 6,
            ),
            child: Text(
              "5:33",
              style: TextStyle(
                color: Color(0XFFD5D5D5),
                fontSize: 15,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 22,
            width: 72,
            margin: EdgeInsets.only(bottom: 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SizedBox(
                      height: 16,
                      width: 16,
                      child: SvgPicture.asset(
                        "assets/images/img_hicon_linear.svg",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 22,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            "assets/images/img_hicon_bold_heart.svg",
                          ),
                        ),
                      ),
                      Padding(
                        child: SizedBox(
                          height: 22,
                          width: 22,
                          child: SvgPicture.asset(
                            "assets/images/img_hicon_bold_heart_22x22.svg",
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
    );
  }
}
