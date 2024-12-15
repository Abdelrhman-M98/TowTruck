import 'package:flutter/material.dart';
import 'package:tow_truck/Screens/login_page.dart';
import 'package:tow_truck/Widget/custom_btn.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 460,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    "assets/Image/onboard.png",
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 500,
                  ),
                ),
                Positioned.fill(
                  child: CustomPaint(
                    painter: AngledOverlayPainter(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Always by Your Side",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomBtn(
            title: "Let's Get Started",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }),
              );
            },
          )
        ],
      ),
    );
  }
}

class AngledOverlayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.6)
      ..lineTo(size.width * 0.09, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
