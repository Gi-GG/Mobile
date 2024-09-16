import 'package:flutter/material.dart';

class HomeconcertsiniTabPage extends StatefulWidget {
  const HomeconcertsiniTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeconcertsiniTabPageState createState() => HomeconcertsiniTabPageState();
}

class HomeconcertsiniTabPageState extends State<HomeconcertsiniTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDubaiTourList(context),
                    SizedBox(height: 56),
                    Text(
                      "Recommend Songs",
                      style: TextStyle(
                        color: Color(0XFFDADADA),
                        fontSize: 16,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8),
                    _buildHiconBoldList(context)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDubaiTourList(BuildContext context) {
    return SizedBox(
      height: 242,
      width: 362,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 14,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return DubaitourlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildHiconBoldList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 28),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 16,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return HiconboldlistItemWidget();
        },
      ),
    );
  }
}
