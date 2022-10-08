import 'package:flutter/material.dart';
import 'package:sion_app/screen/reset_pasword.dart';

class SionTiga extends StatelessWidget {
  const SionTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 24.0,
          ),
          Card(
            color: Color(0xffeb4021),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1664540056129-66cfbd1d6f32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
              ),
              title: Text(
                "Lagu Sion Plus",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              subtitle: Text(
                "Pujilah Tuhan, Hai Jiwaku!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 88.0,
          ),
          SizedBox(
            height: 330.0,
            child: Image.network(
              "https://images.unsplash.com/photo-1664519803504-a8ed329d9381?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            "Audio dan text bacaan ibadah terbaru\nsetiap harinya.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xffeceff1)),
                onPressed: () {},
                child: Text(
                  "< Kembali",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xffeb4021)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPasword()));
                },
                child: Text(
                  "Selanjutnya >",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
