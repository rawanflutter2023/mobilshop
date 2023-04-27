import 'package:flutter/material.dart';

import '../widgets/add_map.dart';
import '../widgets/map_card.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 237, 237),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: const Text(
          'Shipping Address',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const MapCard(),
              const SizedBox(
                height: 50,
              ),
              const MapCard(),
              const SizedBox(
                height: 50,
              ),
              const AddMap(),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Continue To Payment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(500)),
                                child: Image.asset(
                                  "assets/true.png",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                "Thank You!",
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                  "Your order is completed. Please check the delivery status at order tracking page.",
                                  textAlign: TextAlign.center),
                              InkWell(
                                child: const Text(
                                  "Ok",
                                  style: TextStyle(color: Colors.green),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                          ),
                        );
                      });
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
