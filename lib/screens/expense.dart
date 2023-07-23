import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            cards("budget",24000),
            SizedBox.square(
              dimension: 10,
            ),
            cards("groceries",-600),
            SizedBox.square(
              dimension: 10,
            ),
            cards("salary", "1,00,000"),
            SizedBox.square(
              dimension: 10,
            ),
            cards("bils", -5000)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addexpense");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
Widget cards(thing,amount){
  return Card(
    margin: EdgeInsets.all(8),
    elevation: 6,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(
    //     Radius.circular(70),
    //   ),
    // ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(35,7,35,7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$thing    -   Rs. $amount",
            textScaleFactor: 1.5,
          ),
          IconButton(
            onPressed: (){},
              icon: Icon(Icons.delete_outline),
            iconSize: 40,
          )
        ],
      ),
    ),
  );
}
