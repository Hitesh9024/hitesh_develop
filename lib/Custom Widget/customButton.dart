import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton(
      {required this.titleName,
      required this.onPressed,
      required this.width,
      required this.color});

  final Text titleName;
  final GestureTapCallback onPressed;
  final double width;
  final Color color;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: widget.onPressed,
        child: Container(
            height: 60,
            width: widget.width,
            padding: const EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(35)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [widget.color, widget.color])),
            child: widget.titleName));
  }
}
