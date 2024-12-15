import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:hacking/pushed_pageA.dart';
import 'package:hacking/pushed_pageS.dart';
import 'package:hacking/pushed_pageY.dart';
import 'package:hacking/widgets/search_bar.dart';
import 'balanceScreen.dart';

class MainScreen extends StatelessWidget {
  final List<CameraDescription> cameras;
  final int? balance;
  
  MainScreen(this.cameras, {this.balance});

  static const String id = 'main_screen';

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gyo.Ai',
                  style: TextStyle(
                    color: Color(0xFFFE7C7C),
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Container(
                        child: Image.network(
                          'https://imgs.search.brave.com/KY3asl3tgCzlBcBE9Y1yvnmTTLQrws3JD1Tdmacexec/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/dmVjdG9yc3RvY2su/Y29tL2kvcHJldmll/dy0xeC85MC80MC9i/aXRjb2luLWNvaW4t/aWNvbi1mbGF0LWNh/cnRvb24tdmVjdG9y/LTE1NTk5MDQwLmpw/Zw',
                        ),
                      ),
                    ),
                    Text('$balance')
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Text(
              'Master Your Body Alignment',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
              ),
            ),
          ),
          
          Image.asset('assets/align.jpg'),
          
          // Container(
          //   padding: EdgeInsets.only(left: 16.0, right: 16.0),
          //   child: SizedBox(
          //     child: SearchBar('What pose do you wish to align?'),
          //   ),
          // ),
          
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Text(
              'Strength Alignment',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 150,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PushedPageS(
                                    cameras: cameras, title: 'AlignYoga')));
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/squat.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                         onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PushedPageA(
                                    cameras: cameras, title: 'AlignYoga')));
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/arm_press.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/push_up.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/crunch.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/crunch.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/capture.PNG')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Text(
              'Yoga Alignment',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 150,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PushedPageY(
                                    cameras: cameras, title: 'Alignyoga'),
                              ),
                            );
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/yoga.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PushedPageY(
                                    cameras: cameras, title: 'Alignyoga'),
                              ),
                            );
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/yoga1.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/yoga4.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/yoga2.PNG')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 140,
                        height: 140,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            print('hello');
                          },
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset('assets/squat.PNG')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Container(
          //   child: RaisedButton(
          //     child: Text('Pose Estimation'),
          //     onPressed: () =>
          //         onSelectY(context: context, modelName: 'posenet', cameras: cameras),
          //   ),
          // ),
        ],
      ),
    );
  }
}

void onSelectA(
    {required BuildContext context,
    required String modelName,
    required List<CameraDescription> cameras}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageA(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectS(
    {required BuildContext context,
    required String modelName,
    required List<CameraDescription> cameras}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageS(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}

void onSelectY(
    {required BuildContext context,
    required String modelName,
    required List<CameraDescription> cameras}) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => PushedPageY(
        cameras: cameras,
        title: modelName,
      ),
    ),
  );
}
