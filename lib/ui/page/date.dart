import 'package:flutter/material.dart';

class DateFlutter extends StatefulWidget {
  const DateFlutter({Key? key}) : super(key: key);

  @override
  State<DateFlutter> createState() => _DateFlutterState();
}

class _DateFlutterState extends State<DateFlutter> {
  DateTime _dateTime = DateTime.now();

  void _showdate() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2024)).then((value){
          setState(() {
            _dateTime=value!;
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 30),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _dateTime.toString(),
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 20,),
              ElevatedButton(

                onPressed: () {_showdate();},
                child: Text("Choose Date",style: TextStyle(fontSize: 24),),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
