import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CommentRateBottomsheet extends StatelessWidget {
  CommentRateBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(0XFF2C2B2B),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0XFF2C2B2B),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 72,
                      child: Divider(
                        height: 5,
                        thickness: 5,
                        color: Color(0XFFD9D9D9),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 190,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              36,
                            ),
                            child: Image.asset(
                              "assets/images/img_rectangle_38.png",
                              height: 74,
                              width: 78,
                            ),
                          ),
                          SizedBox(width: 6),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Column(
                                  children: [
                                    Text(
                                      "Your Eyes",
                                      style: TextStyle(
                                        color: Color(0XFFE3E3E3),
                                        fontSize: 23.77777671813965,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Travis Scott",
                                      style: TextStyle(
                                        color: Color(0XFFE3E3E3),
                                        fontSize: 13.166667938232422,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
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
                    SizedBox(height: 10),
                    Container(
                      width: 360,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      child: TextFormField(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: commentController,
                        style: TextStyle(
                          color: Color(0X99A6A6A6),
                          fontSize: 16,
                          fontFamily: 'Satoshi',
                          fontWeight: FontWeight.w700,
                        ),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: "Type A Comment",
                          hintStyle: TextStyle(
                            color: Color(0X99A6A6A6),
                            fontSize: 16,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w700,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            borderSide: BorderSide(
                              color: Color(0X23FFFFFF),
                              width: 0.68,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            borderSide: BorderSide(
                              color: Color(0X23FFFFFF),
                              width: 0.68,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            borderSide: BorderSide(
                              color: Color(0X23FFFFFF),
                              width: 0.68,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            borderSide: BorderSide(
                              color: Color(0X23FFFFFF),
                              width: 0.68,
                            ),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 14, 12, 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            constraints: BoxConstraints(
                              minHeight: 58,
                              minWidth: 58,
                            ),
                            padding: EdgeInsets.all(0),
                            icon: Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                color: Color(0XFF42C73B),
                                borderRadius: BorderRadius.circular(
                                  28,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0X33696969),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                      0,
                                      0,
                                    ),
                                  )
                                ],
                              ),
                              padding: EdgeInsets.all(8),
                              child: Image.asset(
                                "assets/images/img_group_481718.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: IconButton(
                              onPressed: () {},
                              constraints: BoxConstraints(
                                minHeight: 58,
                                minWidth: 58,
                              ),
                              padding: EdgeInsets.all(0),
                              icon: Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  color: Color(0XFF42C73B),
                                  borderRadius: BorderRadius.circular(
                                    28,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0X33696969),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  "assets/images/img_group_481718.png",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: IconButton(
                              onPressed: () {},
                              constraints: BoxConstraints(
                                minHeight: 56,
                                minWidth: 56,
                              ),
                              padding: EdgeInsets.all(0),
                              icon: Container(
                                width: 56,
                                height: 58,
                                decoration: BoxDecoration(
                                  color: Color(0XFF42C73B),
                                  borderRadius: BorderRadius.circular(
                                    28,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0X33696969),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  "assets/images/img_group_481718.png",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: IconButton(
                              onPressed: () {},
                              constraints: BoxConstraints(
                                minHeight: 58,
                                minWidth: 58,
                              ),
                              padding: EdgeInsets.all(0),
                              icon: Container(
                                width: 58,
                                height: 58,
                                decoration: BoxDecoration(
                                  color: Color(0XFFEFF0F6),
                                  borderRadius: BorderRadius.circular(
                                    28,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0X33696969),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.all(14),
                                child: Image.asset(
                                  "assets/images/img_group_481719.png",
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
