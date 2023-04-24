import 'package:flutter/material.dart';

class Comm extends StatefulWidget {
  const Comm({Key? key}) : super(key: key);

  @override
  _CommState createState() => _CommState();
}

class _CommState extends State<Comm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Options'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                child: const Text(
                  "Choose your option",
                  style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white,
               ),
               child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Home()),
                  // );
                },
                child: const Text(
                  "Male",
                  style: TextStyle(fontSize: 20,color: Colors.black),
                ),
              ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.white,
               ),
               child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Home()),
                  // );
                },
                child: const Text(
                  "Female",
                  style: TextStyle(fontSize: 20,color: Colors.black),
                ),
              ),
              ),
             const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 20.0, bottom: 10.0, left: 20.0),
                width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.lightGreen,
               ),
               child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Home()),
                  // );
                },
                child: const Text(
                  "Upload Image",
                  style: TextStyle(fontSize: 20,color: Colors.black),
                ),
              ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
        ),
      ),
      ),
    );
  }
}