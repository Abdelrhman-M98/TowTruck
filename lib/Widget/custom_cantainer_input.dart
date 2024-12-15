import 'package:flutter/material.dart';
import 'package:tow_truck/const.dart';

class CustomCantainerInput extends StatefulWidget {
  const CustomCantainerInput({
    super.key,
    required this.Title,
    this.isPass,
  });

  final String Title;
  final bool? isPass;

  @override
  _CustomCantainerInputState createState() => _CustomCantainerInputState();
}

class _CustomCantainerInputState extends State<CustomCantainerInput> {
  bool _obscureText = true; // Initial password visibility state

  @override
  void initState() {
    super.initState();
    // Set the initial state based on the widget's isPass property
    if (widget.isPass != null) {
      _obscureText = widget.isPass!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              widget.Title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 390,
            height: 48,
            child: TextField(
              obscureText: _obscureText,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 2,
                    color: textFieldBorder,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    width: 2,
                    color: primColor,
                  ),
                ),
                hintText: widget.Title,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: widget.isPass == true
                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: primColor,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText =
                                !_obscureText; // Toggle password visibility
                          });
                        },
                      )
                    : null, // Only show the eye icon if it's a password field
              ),
            ),
          ),
        ],
      ),
    );
  }
}
