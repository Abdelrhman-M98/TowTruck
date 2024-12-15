import 'package:flutter/material.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Lan3JuWw1QBCedWaLjO2y3WFa8N27Wuk3-M5CpfqdKIDBvvLM9lBSKzicTXuEZMV-cg&usqp=CAU"),
          const Center(
            child: Text(
              "تحت الانشاء",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
