import 'package:flutter/material.dart';
class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key? key,
    required this.child, 
    required this.color,
    required this.value
  }) : super(key: key);
  final Widget child;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          top: 4,
          right: 4,
          child: Container(
            // padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
               color: color,
              shape: BoxShape.circle,
            ),
            constraints: const BoxConstraints(
              minHeight: 20,
              minWidth: 20,
            ),
            child: Center(
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        )
      ],
    );
  }
}