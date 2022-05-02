import 'package:flutter/material.dart';

class HSearchBar extends StatelessWidget {
  const HSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Поиск...',
            hintStyle: TextStyle(color: Colors.grey.shade600),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: const EdgeInsets.all(8),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey.shade100),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.grey.shade100),
            ),
          ),
        ),
      );
}
