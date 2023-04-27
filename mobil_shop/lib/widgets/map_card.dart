import 'package:flutter/material.dart';

class MapCard extends StatelessWidget {
  const MapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Home Address",
                    ),
                    Text("123 New York City, 12 Road")
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Radio(
                      value: true,
                      groupValue: "groupValue",
                      onChanged: (val) {}))
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset("assets/image.png"),
          )
        ],
      ),
    );
  }
}
