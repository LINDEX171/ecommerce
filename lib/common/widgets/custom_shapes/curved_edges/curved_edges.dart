import 'package:flutter/material.dart';


class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstcuve = Offset(0, size.height - 20);
    final lastcuve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstcuve.dx, firstcuve.dy, lastcuve.dx, lastcuve.dy);

    final secondfirstcuve = Offset(0, size.height - 20);
    final secondlastcuve = Offset(size.width-30, size.height - 20);
    path.quadraticBezierTo(secondfirstcuve.dx, secondfirstcuve.dy, secondlastcuve.dx, secondlastcuve.dy);

    final thirdfirstcuve = Offset(size.width, size.height - 20);
    final thirdlastcuve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstcuve.dx, thirdfirstcuve.dy, thirdlastcuve.dx, thirdlastcuve.dy);


    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }
  
}