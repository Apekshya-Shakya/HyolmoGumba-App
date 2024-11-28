import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Search for events, information, and members",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
      ]
    );
  }
}