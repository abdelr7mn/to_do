import 'package:flutter/material.dart';

class Addtask extends StatelessWidget {
  const Addtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            'Add New Task',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: "Task Title",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          SizedBox(height: 35),
          TextField(
            decoration: InputDecoration(
              labelText: "Description",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Select Data',
            style: TextStyle(fontSize: 20),
          ),
          Center(
              child: Text('12:00',
                  style: TextStyle(
                    fontSize: 30,
                  ))),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
