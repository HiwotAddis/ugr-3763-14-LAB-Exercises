import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.question_mark_rounded),
          title: const Row(
            children: [
              Text(
                'ij',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'Tracker',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Spacer(),
              Icon(Icons.notifications),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.settings),
            ],
          ),
        ),
        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/coffee.jpg'),
            ),
            Column(
              children: [Text('Robert Steven'), Icon(Icons.car_crash)],
            ),
            Text('Log Out')
          ]),
          Container(
              color: Colors.blue,
              width: 600,
              height: 25,
              child: Center(
                child: Text('Online|Battery: 90%'),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.flag,
                        color: Colors.blue,
                      ),
                      Text('map'),
                    ],
                  ),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      Text('live location'),
                    ],
                  ),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: [
                      Icon(
                        Icons.history_outlined,
                        color: Colors.blue,
                      ),
                      Text('history location'),
                    ],
                  ),
                  width: 100,
                  height: 100),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.blue,
                      ),
                      Text('set geoference'),
                    ],
                  ),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.info,
                        color: Colors.blue,
                      ),
                      Text('detail info'),
                    ],
                  ),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                      Text('edit device'),
                    ],
                  ),
                  width: 100,
                  height: 100),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.phone_android,
                        color: Colors.blue,
                      ),
                      Text('change center number'),
                    ],
                  ),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.key,
                        color: Colors.blue,
                      ),
                      Text('disabled menu'),
                    ],
                  ),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.timelapse_rounded,
                        color: Colors.blue,
                      ),
                      Text('set gps'),
                    ],
                  ),
                  width: 100,
                  height: 100),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Text('restart device'),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Text('power saving'),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Text('normal mode'),
                  width: 100,
                  height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Text('shutdown'),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Text('device command'),
                  width: 100,
                  height: 100),
              Container(
                  color: Color.fromARGB(255, 241, 236, 236),
                  child: Text('contact us'),
                  width: 100,
                  height: 100),
            ],
          )
        ]),
      ),
    );
  }
}
