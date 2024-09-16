import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConcertCardScreen extends StatelessWidget {
  const ConcertCardScreen({Key? key})
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
              _buildHeaderSection(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          "   Shehab Al Sayed  UpComing Concert",
                          style: TextStyle(
                            color: Color(0XFFE3E3E3),
                            fontSize: 10.601092338562012,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          " 2 album , 67 track",
                          style: TextStyle(
                            color: Color(0XFFD3D3D3),
                            fontSize: 13,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 8),
                        _buildConcertInfoSection(context),
                        SizedBox(height: 16),
                        _buildArtistListSection(context),
                        SizedBox(height: 26),
                        _buildSongsSection(context),
                        SizedBox(height: 4)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection(BuildContext context) {
    return SizedBox(
      height: 240,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(68),
            ),
            child: Image.asset(
              "assets/images/img_rectangle_15.png",
              height: 240,
              width: double.maxFinite,
            ),
          ),
          AppBar(
            elevation: 0,
            toolbarHeight: 66,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            leadingWidth: 54,
            leading: Padding(
              padding: EdgeInsets.only(left: 22),
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
                    color: Color(0X21000000),
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
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 40,
                  bottom: 9,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      width: 3,
                      decoration: BoxDecoration(
                        color: Color(0XFFF0F0F0),
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
                        color: Color(0XFFF0F0F0),
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
                        color: Color(0XFFF0F0F0),
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
              padding: EdgeInsets.only(left: 22),
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
                    color: Color(0X21000000),
                    borderRadius: BorderRadius.circular(
                      16,
                    ),
                  ),
                  padding: EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    "assets/images/img_hicon_bold_left.svg",
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                    right: 40,
                    bottom: 9,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                          color: Color(0XFFF0F0F0),
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
                          color: Color(0XFFF0F0F0),
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
                          color: Color(0XFFF0F0F0),
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConcertInfoSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Albums",
            style: TextStyle(
              color: Color(0XFFDDDDDD),
              fontSize: 16,
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: Image.asset(
              "assets/images/img_389801_1.png",
              height: 14,
              width: 14,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 48,
              width: 202,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  SizedBox(
                    width: 78,
                    child: Text(
                      "Location : Date : Book A Ticket : ",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFFA6A6A6),
                        fontSize: 12,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 2,
                        top: 4,
                        right: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            child: SizedBox(
                              height: 6,
                              width: 8,
                              child: SvgPicture.asset(
                                "assets/images/img_vector.svg",
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Image.asset(
                              "assets/images/img_appointment_dat.png",
                              height: 10,
                              width: 10,
                            ),
                          )
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
    );
  }

  /// Section Widget
  Widget _buildArtistListSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 170,
        width: 362,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 28),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return ArtistlistsectionItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSongsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Songs Line ",
                  style: TextStyle(
                    color: Color(0XFFCACACA),
                    fontSize: 16,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "see more",
                    style: TextStyle(
                      color: Color(0XFF4A4949),
                      fontSize: 12,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12),
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 14,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListhiconboldplItemWidget();
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 4,
                    width: 22,
                    margin: EdgeInsets.only(right: 94),
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
                        ),
                        Padding(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child: SvgPicture.asset(
                              "assets/images/img_hicon_bold_heart.svg",
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
              label: '',
            )
          ],
        ),
      ),
    );
  }
}

class ArtistlistsectionItemWidget extends StatelessWidget {
  const ArtistlistsectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 140,
          margin: EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                child: Image.asset(
                  "assets/images/img_rectangle_16.png",
                  height: 134,
                  width: double.maxFinite,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Sayed al leaaba ",
                  style: TextStyle(
                    color: Color(0XFFD1D1D1),
                    fontSize: 13,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListhiconboldplItemWidget extends StatelessWidget {
  const ListhiconboldplItemWidget({Key? key})
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
            minHeight: 42,
            minWidth: 42,
          ),
          padding: EdgeInsets.all(0),
          icon: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Color(0XFF2B2B2B),
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/images/img_hicon_bold_play.svg",
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shehab Al haqeqe",
                style: TextStyle(
                  color: Color(0XFFD5D5D5),
                  fontSize: 16,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "shehab al sayed",
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
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              bottom: 8,
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
        Spacer(),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                "assets/images/img_hicon_linear.svg",
              ),
            ),
          ),
        )
      ],
    );
  }
}
