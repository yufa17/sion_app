import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:sion_app/screen/playlist/sion_playlist.dart';

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
  List<String> tags = [];
  List<String> namaHari = [
    "M",
    "S",
    "SE",
    "R",
    "K",
    "J",
    "SA",
  ];
  bool isSwitched = false;
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
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(
                      0,
                      10,
                    ),
                    blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.judul,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.jam,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Pilih Hari',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Switch(
                          activeColor: Colors.orange,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          })
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      ChipsChoice<String>.multiple(
                        value: tags,
                        onChanged: (val) => setState(
                          () => tags = val,
                        ),
                        choiceItems: C2Choice.listFrom<String, String>(
                          source: namaHari,
                          value: (i, v) => v,
                          label: (i, v) => v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
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
                    child: const Text(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SionPlaylist(),
                      ),
                    );
                  },
                  child: const Text(
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
