import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Custom buttons"),
      ),
      body: const Center(
        child: Column(
          children: [
            SelectionButton(),
            SizedBox(height: 8),
            SelectionButton(),
            SizedBox(height: 8),
            SelectionButton(),
            SizedBox(height: 8),
            SelectionButton(),
          ],
        )
      ),
    ),
  )
);

class SelectionButton extends StatefulWidget {
  const SelectionButton({
    super.key,
  });

  @override

  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {

  bool _selected = false;

  String get buttonText => _selected ? "Selected" : "Not Selected";
  Color get textColor => _selected ? Colors.white : Colors.black;
  Color get backgroundColor => _selected ? Colors.blue.shade500 : Colors.blue.shade50;

  void handleSelection() {
    setState(() {
      _selected = !_selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () => handleSelection(),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: textColor
            ),
          ),
        )
      ),
    );
  }
}
