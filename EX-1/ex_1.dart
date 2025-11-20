import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 100,
            children:[ SizedBox(
                  width: 400,
                  height: 100,
                  child: CustomerButton()
                ),
                SizedBox(
                  width: 400,
                  height: 100,
                  child: CustomerButton()
                ),
                SizedBox(
                  width: 400,
                  height: 100,
                  child: CustomerButton()
                ),
            ]
          ),
        )
      ),
    ));

class CustomerButton extends StatefulWidget {
  const CustomerButton({super.key});

  @override
  State<CustomerButton> createState() => _CustomerButtonState();
}

class _CustomerButtonState extends State<CustomerButton> {
  String status="Not Selected";
  Color? bgColor=Colors.blue[50];
  Color textColor=Colors.white;

  void clickButton(){
  setState(() {
    if (status == "Not Selected") {
      status = "Selected";
      bgColor = Colors.blue[500];
    } else {
      status = "Not Selected";
      bgColor = Colors.blue[50];
    }
  });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clickButton,
      style: ButtonStyle(
        backgroundColor:WidgetStatePropertyAll(bgColor),
      ),
      child: Center(
        child: Text(status)
    ));
}
}


