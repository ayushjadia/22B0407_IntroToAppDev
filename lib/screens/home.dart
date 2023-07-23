import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int budget=24000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: const Text("Budget Tracker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              widthFactor: 1,
              child: Icon(
              Icons.account_box_rounded,
              size: 250,
            ),
            ),
            Text(
                "Welcome Back!",
                textScaleFactor: 2.5,
            ),
            SizedBox.square(
              dimension: 20,
            ),
            Text(
                "User(Name)",
              textScaleFactor: 2,
            ),
            SizedBox.square(
              dimension: 30,
            ),
        boxBudget(budget,context),
          ],
        ),
      ),
    );
  }
}

Widget boxBudget(budget,context){
  return Card(
    margin: EdgeInsets.all(8),
    elevation: 6,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(70),
    //   ),
    // ),
    child: ElevatedButton(
      onPressed: (){
        Navigator.pushNamed(context, '/expense');
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35,7,35,7),
        child: Text(
          "Budget  -  Rs.$budget",
          textScaleFactor: 2.1,
        ),
      ),
    ),
  );
}

