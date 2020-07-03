
import 'package:flutter/material.dart';
import 'package:samchw/refer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String _valGender;
  String _valAge;
  String _valStatus;
  List _Status = ['SAM', 'MAM','Nourished'];
  List _listGender = ["Male", "Female"];
  List _myAge = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Card(
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                child:
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full name',
                ),
              ),
              ),
              
              
             
              TextFormField(
                decoration: InputDecoration(
                  labelText:'Region',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'District',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ward',
                ),
              ),
               Card(
                child:
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                ),
              ),
              ),
              DropdownButton(
                 hint: Text("Select Age"),
              value: _valAge,
              items: _myAge.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valAge = value;  
                });
              },
              ),
               DropdownButton(
                hint: Text("Select The Gender"),
              value: _valGender,
              items: _listGender.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valGender = value;  
                });
              },
              ),
              
              DropdownButton(
                 hint: Text("Status"),
              value: _valStatus,
              items: _Status.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valStatus = value;  
                });
              },
              ),

              FlatButton(
                onPressed: () { 
                  navigateToRefer(context);
                 },
                child:Text('Next') ,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

Future navigateToRefer(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Refer()));
}