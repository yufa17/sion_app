import 'package:flutter/material.dart';
import 'package:sion_app/model/playlist.dart';
import 'package:sion_app/screen/autoplay/sion_autoplay.dart';

class SionPlaylist extends StatelessWidget {
  const SionPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: const Color(0XFFEB4021),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Playlist',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
              itemCount: myPlaylist.length,
              itemBuilder: (context, index) {
                final myList = myPlaylist[index];
                return ListTile(
                  leading: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        myList.imgUrl,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  title: Text(
                    myList.judul,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        myList.jumlahLagu,
                        style:
                            const TextStyle(fontSize: 8, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.library_music,
                        size: 15,
                        color: Color(0XFFEB4021),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        myList.waktu,
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        myList.hari,
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(
                        0XFFEB4021,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return SionAutoPlay(
                                  judul: "Tentukan Jam",
                                  jam: "04:30",
                                  pilihHari: "Pilih Hari");
                            });
                      },
                      icon: const Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.orange[600],
              child: const Icon(
                Icons.add,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
