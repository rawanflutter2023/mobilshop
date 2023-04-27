import 'package:flutter/material.dart';

class AddMap extends StatefulWidget {
  const AddMap({super.key});

  @override
  State<AddMap> createState() => _AddMapState();
}

class _AddMapState extends State<AddMap> {
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
            child: Container(
              width: double.infinity,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Icon(
                Icons.add,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
