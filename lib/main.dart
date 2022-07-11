import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_Index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _Index,
          onTap: (int index) {
            setState(() {
              _Index = index;
            });
          },
          // fixedColor: ,
          backgroundColor: Color(0xffF4F4F4),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/Vector (7).png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/Group.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/Group (1).png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/Group (2).png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/Group 8.png'),
              label: '',
            ),
          ]),
    );
  }

  int _Index = 0;
  List<Widget> _pages = [Page(), Page(), Page(), Page(), Page()];
}

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack1(),
        Button2(),
        Text1(),
        Button3(),
        Text2(),
        Button4(),
      ],
    ));
  }

  Stack1() {
    return Container(
      height: 365,
      // color: Colors.black,
      child: Stack(
        children: [
          // Container(
          //   height: double.maxFinite,
          // ),
          Container(
            height: 252.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/Rectangle 93.png'))),
          ),
          // Image.asset('images/Rectangle 93.png'),
          Positioned(
            top: 72.h,
            right: 39.w,
            child: Image.asset('images/bell.png'),
          ),
          Positioned(
            top: 108.h,
            left: 36.w,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome John',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Make a difference with your donation',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 192.h,
            left: 23.w,
            right: 23.w,
            child: Button1(),
          ),
        ],
      ),
    );
  }

  Text1() {
    return Padding(
      padding: const EdgeInsets.only(left: 33, bottom: 12, top: 25).r,
      child: Text(
        'Features',
        style: TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Color(0xff69131A),
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Text2() {
    return Padding(
      padding: const EdgeInsets.only(left: 36, bottom: 20, top: 37).r,
      child: Text(
        'Articles',
        style: TextStyle(
            fontFamily: 'Source Sans Pro',
            color: Color(0xff69131A),
            fontSize: 18.sp,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Button2() {
    return Container(
        // margin: EdgeInsets.only(bottom: 10),
        color: Color(0xff69131A),
        height: 70.h,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 66,
          ).r,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Text(
                'Total lives saved',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 107),
              Text(
                '3',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    height: 1.1,
                    color: Colors.white,
                    fontSize: 64.sp,
                    fontWeight: FontWeight.w600),
              ),
              // SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  '+',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ));
  }

  Button1() {
    return Stack(
      children: [
        Container(
            // color: Colors.green,
            decoration: BoxDecoration(
                color: Color(0xffFFF1F6),
                borderRadius: BorderRadius.circular(20).r,
                boxShadow: [
                  BoxShadow(
                    // color: Color(0xff00000040),

                    color: Colors.black.withOpacity(0.25),
                    //Dev Jamiu
                    blurRadius: 20,
                    // spreadRadius: 0,
                    offset: Offset(0, 4),
                  )
                ]),
            // margin: EdgeInsets.only(left: 29, top: 21),
            height: 160.h,
            width: 368.w,
            child: Padding(
              padding: const EdgeInsets.only(left: 29, top: 21, right: 21).r,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Donate blood within your area',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Color(0xff69131A),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 11.h),
                  SizedBox(
                      height: 53.h,
                      width: 270.w,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eu ullamcorper malesuada purus lorem amet aliquet.',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Color(0xff4B1B31),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300),
                      )),
                ],
              ),
            )),
        Positioned(
          top: 98,
          right: 21,
          child: Container(
            height: 39.h,
            width: 114.w,
            decoration: BoxDecoration(
              color: Color(0xffF50057),
              borderRadius: BorderRadius.circular(5.0).r,
            ),
            child: Center(
                child: Text(
              'Donate',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700),
            )),
          ),
        )
      ],
    );
  }

  Button3() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 120.h,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 92.h,
                width: 123.w,
                decoration: BoxDecoration(
                  color: Color(0XFFFEDBDB),
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/Vector (5).png'),
                      SizedBox(height: 8.0.h),
                      Text(
                        'Track',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Color(0xffF50057),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 92.h,
                width: 123.w,
                decoration: BoxDecoration(
                  color: Color(0xffFEDBDB),
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/Vector (6).png'),
                      SizedBox(height: 8.0.h),
                      Text(
                        'Incentives',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Color(0xffF50057),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 92.h,
                width: 123.w,
                decoration: BoxDecoration(
                  color: Color(0xffFEDBDB),
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/Group 12.png'),
                      SizedBox(height: 8.0.h),
                      Text(
                        'FAQs',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            color: Color(0xffF50057),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Button4() {
    return Expanded(
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38, bottom: 16).r,
              child: SizedBox(
                height: 60.h,
                child: Row(
                  children: [
                    Image.asset('images/Rectangle 86.png'),
                    SizedBox(width: 26.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 facts about Blood Donation',
                          style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              color: Color(0xff4B1B31),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 234.w,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut amet sem commodo duis commodo convallis aliquam purus.',
                            style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                color: Color(0xff4B1B31),
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          'Read more',
                          style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              color: Color(0xffF50057),
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, bottom: 16, top: 16).r,
              child: SizedBox(
                height: 60.h,
                child: Row(
                  children: [
                    Image.asset('images/Rectangle 82.png'),
                    SizedBox(width: 26.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How to prepare for a blood donation',
                          style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              color: Color(0xff4B1B31),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 234.w,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut amet sem commodo duis commodo convallis aliquam purus.',
                            style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                color: Color(0xff4B1B31),
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          'Read more',
                          style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              color: Color(0xffF50057),
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
