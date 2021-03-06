import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/interview_app/app_styles.dart';

class InterviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SchedulesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SchedulesPage extends StatefulWidget {
  @override
  _SchedulesPageState createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage>
    with TickerProviderStateMixin {
  Timer _timer;
  int settingTime = 87500;
  double hour = 0;
  double min = 0;
  int second = 0;
  AnimationController _fadeAnimationController;
  Animation<double> _fadeAnimation;
  AnimationController _emailAnimationController;
  Animation<double> emailAnimation;
  AnimationController _buttonAnimationController;
  Animation<double> buttonAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    var deviceWidth = MediaQuery.of(context).size.width;
    _timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (settingTime < 1)
        _timer.cancel();
      else
        settingTime -= 1;
      hour = settingTime / 3600;
      second %= 3600;
      min = second / 60;
      second %= 60;
      setState(() {});
    });
    _fadeAnimationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _emailAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_fadeAnimationController)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((s) {
            if (s == AnimationStatus.completed) {
//              _fadeAnimationController.reset();
              _emailAnimationController.forward();
            }
          });
    emailAnimation =
        CurvedAnimation(parent: _emailAnimationController, curve: Curves.easeIn)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((s) {
            if (s == AnimationStatus.completed) {
//              _fadeAnimationController.forward();
              _buttonAnimationController.forward();
            }
          });

    _buttonAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    buttonAnimation =
    Tween<double>(begin: 0, end: 392)
        .animate(_buttonAnimationController)
      ..addListener(() {
        setState(() {});
      });
    _fadeAnimationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    _fadeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var deviceMedia = MediaQuery.of(context);
    print("device width : ${deviceMedia.size.width}");

    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(64),
                  bottomRight: Radius.circular(64),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.apps,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        "Schedules",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: appbarTextColor,
                            fontSize: 24),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Spacer(),
                      Container(
                        height: 58,
                        width: 68,
                        decoration: BoxDecoration(
                            color: topTimeBlockColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            20.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        ":",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 58,
                        width: 68,
                        decoration: BoxDecoration(
                            color: topTimeBlockColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            34.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        ":",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 58,
                        width: 68,
                        decoration: BoxDecoration(
                            color: topTimeBlockColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            15.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 58,
                        width: 68,
                        decoration: BoxDecoration(
                            color: appRedColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            "min",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Remaining for next interview!",
                        style: TextStyle(
                            color: appbarTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            "Senior Product Designer",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
              decoration: BoxDecoration(
                color: boxBlackColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                          radius: 32,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Dreamwalker",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Developer",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                color: appGreenColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Available",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(
                                    0.6,
                                  ),
                                  fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 34,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 34,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                child: Icon(
                                  Icons.message,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: FadeTransition(
              opacity: _fadeAnimationController,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: BoxDecoration(
                    color: boxBlackColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 16, left: 16, top: 16),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Interviews Records",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Spacer(),
                            Text(
                              "Dashboard",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.2)),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ScaleTransition(
                              scale: _emailAnimationController,
                              child: Container(
                                height: 78,
                                width: 78,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: appYellowColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.mail_outline,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Emails",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ScaleTransition(
                              scale: _emailAnimationController,
                              child: Container(
                                height: 78,
                                width: 78,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: appRedColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.message,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Chats",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ScaleTransition(
                              scale: _emailAnimationController,
                              child: Container(
                                height: 78,
                                width: 78,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: appBlueColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.photo_library,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Media",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "110 emails archived!",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              letterSpacing: 1.2,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24
                ),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: buttonAnimation.value,
                  height: double.infinity,
                  decoration: BoxDecoration(color: appOrangeColor,
                  borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Text("No Interview Records Found Today!",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                  
                ),
                
              ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 65),
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.mail_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.check_circle_outline),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
