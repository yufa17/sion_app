import 'package:flutter/material.dart';
import 'package:sion_app/screen/lupa_password.dart';

class SionUnbording extends StatelessWidget {
  const SionUnbording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Card(
          color: Color(0XFFEB4021),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1664472136270-78353e79ffce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=823&q=80'),
            ),
            title: Text(
              'Lagu Sion Plus',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            subtitle: Text(
              'Pujilah Tuhan, hai jiwaku!',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 88,
        ),
        SizedBox(
          height: 330,
          child: Image.network(
            'https://images.unsplash.com/photo-1664519803504-a8ed329d9381?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Terdapat banyak jenis Lagu Sion yang dapat\n diputar. Juga terdapat korelasi antar lagu.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0XFFECEFF1)),
              onPressed: () {},
              child: Text(
                '< Kembali',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0XFFEB4021)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LupaPassword()));
                },
                child: Text(
                  'Selanjutnya >',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    ));
  }
}
