import 'package:flutter/material.dart';
import 'package:persian_datetimepickers/persian_datetimepickers.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  DateTime? _pickedDate;
  TimeOfDay? _pickedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('persian_datetimepickers'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              ElevatedButton(
                onPressed: () async {
                  final TimeOfDay? time =
                  await showPersianTimePicker(
                    context: context,
                  );

                  setState(() {
                    _pickedTime = time;
                    print('Time: $_pickedTime');
                  });
                },
                child: const Text(
                  'تایم پیکر',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () async {
                  // Date picker
                  final DateTime? date =
                  await showPersianDatePicker(
                    context: context,
                  );

                  setState(() {
                    _pickedDate = date;
                    print('Time: $_pickedDate');
                  });
                },
                child: const Text(
                  'تاریخ پیکر',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
































