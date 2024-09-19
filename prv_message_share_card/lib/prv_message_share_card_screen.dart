import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrvMessageShareCardScreen extends StatelessWidget {
  const PrvMessageShareCardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF121117),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 30,
                top: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      child: SizedBox(
                        height: 18,
                        width: 24,
                        child: SvgPicture.asset(
                          "assets/images/img_vector.svg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 132,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Text(
                          "IGG",
                          style: TextStyle(
                            color: Color(0XFF42C73B),
                            fontSize: 40,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            child: Image.asset(
                              "assets/images/img_gigg_2.png",
                              height: 60,
                              width: 60,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 34),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      76,
                    ),
                    child: Image.asset(
                      "assets/images/img_ellipse_1.png",
                      height: 154,
                      width: 154,
                    ),
                  ),
                  SizedBox(height: 34),
                  Text(
                    "Mortal",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 28,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "DAECRIC",
                    style: TextStyle(
                      color: Color(0XFFB8B8B8),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 18),
                  _buildProgressBar(context),
                  SizedBox(height: 16),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          child: SizedBox(
                            height: 12,
                            width: 20,
                            child: SvgPicture.asset(
                              "assets/images/img_vector_12x20.svg",
                            ),
                          ),
                        ),
                        Padding(
                          child: SizedBox(
                            height: 16,
                            width: 22,
                            child: SvgPicture.asset(
                              "assets/images/img_vector_16x22.svg",
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          constraints: BoxConstraints(
                            minHeight: 60,
                            minWidth: 60,
                          ),
                          padding: EdgeInsets.all(0),
                          icon: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFFFFF),
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            padding: EdgeInsets.all(18),
                            child: SvgPicture.asset(
                              "assets/images/img_vector_60x60.svg",
                            ),
                          ),
                        ),
                        Padding(
                          child: SizedBox(
                            height: 16,
                            width: 22,
                            child: SvgPicture.asset(
                              "assets/images/img_vector_1.svg",
                            ),
                          ),
                        ),
                        Padding(
                          child: SizedBox(
                            height: 18,
                            width: 20,
                            child: SvgPicture.asset(
                              "assets/images/img_shufle.svg",
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
      ),
    );
  }

  /// Section Widget
  Widget _buildProgressBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "03:34",
            style: TextStyle(
              color: Color(0XFFFFFFFF),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0XFF414141),
                borderRadius: BorderRadius.circular(
                  2,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 112,
                    child: Divider(
                      height: 4,
                      thickness: 4,
                      color: Color(0XFFFFFFFF),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            "02:04",
            style: TextStyle(
              color: Color(0XFFFFFFFF),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
