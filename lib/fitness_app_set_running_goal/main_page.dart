import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/fitness_app_set_running_goal/home_page.dart';

class FitnessSetRunningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.tealAccent),
      home: HomePage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _goalTextController = TextEditingController();
  TextEditingController _timeTextController = TextEditingController();
  TextEditingController _distanceTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181E27),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 160,
              child: Center(
                child: Container(
                  height: 4,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 80,
                width: 260,
                child: Text(
                  "Set Running Goals",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      letterSpacing: 1.2),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _goalTextController,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                  suffix: Text("6.58"),
                  suffixStyle:
                      TextStyle(color: Colors.blueGrey, letterSpacing: 1.5),
                  hintText: "Input Goal Pace",
                  hintStyle: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 18,
                  ),
                  labelText: "Pace",
                  labelStyle: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                enabled: true,
                onTap: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((v) {
                    setState(() {
                      _timeTextController.text = "${v.hour}:${v.minute}";
                    });
                  });
                },
                controller: _timeTextController,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                  hintText: "Input Goal Pace",
                  hintStyle: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 18,
                  ),
                  labelText: "Time",
                  labelStyle: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                enabled: true,
                onTap: () {
                  _distanceTextController.clear();
                },
                onSubmitted: (v) {
                  setState(() {
                    _distanceTextController.text = v + "  miles";
                  });
                },
                controller: _distanceTextController,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffix: Text("22 MIL"),
                  suffixStyle:
                      TextStyle(color: Colors.blueGrey, letterSpacing: 1.5),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.tealAccent)),
                  hintText: "Input Distance",
                  hintStyle: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 18,
                  ),
                  labelText: "Distance",
                  labelStyle: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  "Run",
                  style: TextStyle(
                      color: Color(0xff181E27),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xff181E27),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.teal[200])),
              child: Center(
                child: Text(
                  "Save & Run Later",
                  style: TextStyle(
                      color: Colors.tealAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
