import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class SearchHalfScreen extends StatelessWidget {
  SearchHalfScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1B1A1A),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 974,
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
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildAppBar(context),
                        SizedBox(height: 14),
                        _buildProductSearch(context),
                        SizedBox(height: 28),
                        _buildMusicCategories(context)
                      ],
                    ),
                  )
                ],
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
      toolbarHeight: 60,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leadingWidth: 57,
      leading: Padding(
        padding: EdgeInsets.only(
          left: 25,
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
          SizedBox(
            height: 60,
            width: 60,
            child: Stack(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Image.asset(
                    "assets/images/img_gigg_2.png",
                    height: 60,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Image.asset(
                    "assets/images/img_gigg_2.png",
                    height: 60,
                  ),
                )
              ],
            ),
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
          left: 25,
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
              SizedBox(
                height: 60,
                width: 60,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/img_gigg_2.png",
                      height: 60,
                      width: double.maxFinite,
                    ),
                    Image.asset(
                      "assets/images/img_gigg_2.png",
                      height: 60,
                      width: double.maxFinite,
                    )
                  ],
                ),
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
  Widget _buildProductSearch(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0XFF2A2525),
        borderRadius: BorderRadius.circular(
          24,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0X198B8B8B),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              10,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 48,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 328,
                  child: TextFormField(
                    focusNode: FocusNode(),
                    autofocus: true,
                    controller: searchController,
                    style: TextStyle(
                      color: Color(0XFFB6B6B6),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: "Search Artists...",
                      hintStyle: TextStyle(
                        color: Color(0XFFB6B6B6),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(
                          15,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff757575),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(
                          right: 15,
                        ),
                        child: IconButton(
                          onPressed: () {
                            searchController.clear();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Color(0xff757575),
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0XF4FFFFFF),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: double.maxFinite,
                    height: 32,
                    margin: EdgeInsets.only(right: 12),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0XFF42C73B),
                        side: BorderSide(
                          color: Color(0XFF42C73B),
                          width: 1.0,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        visualDensity: const VisualDensity(
                          vertical: -4,
                          horizontal: -4,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Trending search",
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset(
                      "assets/images/img_fire.svg",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: _buildSearchResultZeina(
              context,
              userName: "Travis Scott",
              userSearches: "7.8k searches",
            ),
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Marwan Moussa",
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "2.8k searches",
                    style: TextStyle(
                      color: Color(0X7F000000),
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
          ),
          SizedBox(height: 16),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: _buildSearchResultZeina(
              context,
              userName: "Zeina",
              userSearches: "1.7k searches",
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMusicCategories(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 101,
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return MusiccategoriesItemWidget();
      },
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 116,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                                SizedBox(
                                  width: double.maxFinite,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
              label: '',
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSearchResultZeina(
    BuildContext context, {
    required String userName,
    required String userSearches,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
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
              color: Color(0XFF000000),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              userSearches,
              style: TextStyle(
                color: Color(0X7F000000),
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

class MusiccategoriesItemWidget extends StatelessWidget {
  const MusiccategoriesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              10,
            ),
            child: Image.asset(
              "assets/images/img_rectangle_2.png",
              height: 100,
              width: double.maxFinite,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 6,
                bottom: 4,
              ),
              child: Text(
                "Jazz music",
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
