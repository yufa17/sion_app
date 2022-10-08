import 'dart:html';

import 'package:flutter/material.dart';

class ResetPasword extends StatelessWidget {
  const ResetPasword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Reset Pasword",
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Silahkan Masukkan Pasword Baru",
            style: TextStyle(color: Colors.grey),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Kata Sandi Baru")),
          ),
          const SizedBox(
            height: 24.0,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Ulangi Kata Sandi")),
          ),
          SizedBox(
            height: 24.0,
          ),
          Container(
              height: 56.0,
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xffeb4021)),
                  onPressed: () {},
                  child: Text(
                    "Reset Kata Sandi",
                    style: TextStyle(fontSize: 16.0),
                  ))),
        ]),
      ),
    );
  }
}
