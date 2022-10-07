import 'package:flutter/material.dart';

class SionAutoPlay extends StatefulWidget {
  final String judul, jam, pilihHari;
  const SionAutoPlay(
      {Key? key,
      required this.judul,
      required this.jam,
      required this.pilihHari})
      : super(key: key);

  @override
  State<SionAutoPlay> createState() => _SionAutoPlayState();
}

class _SionAutoPlayState extends State<SionAutoPlay> {
  final List<String> namaHari = [
    "M",
    "S",
    "S",
    "R",
    "K",
    "J",
    "S",
  ];
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: [
        Container(
          padding:
              EdgeInsets.only(left: 20, top: 45 + 20, right: 20, bottom: 20),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(
                      0,
                      10,
                    ),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.judul,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.jam,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Hari',
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: Text(
                          'M',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Text('S'),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Text('S'),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Text('R'),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Text('K'),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Text('J'),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Text('S'),
                      ),
                      // Container(
                      //   height: 50,
                      //   child: ListView.builder(
                      //     itemCount: 7,
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return CircleAvatar(
                      //         child: Text(namaHari[index]),
                      //       );
                      //     },
                      //   ),
                      // )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Tambah Waktu",
                      style: TextStyle(fontSize: 18, color: Colors.orange),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Simpan",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
