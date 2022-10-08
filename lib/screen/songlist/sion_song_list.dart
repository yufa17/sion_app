import 'package:flutter/material.dart';
import 'package:sion_app/model/songlist.dart';

class SionSongList extends StatefulWidget {
  const SionSongList({Key? key}) : super(key: key);

  @override
  State<SionSongList> createState() => _SionSongListState();
}

class _SionSongListState extends State<SionSongList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Row(
          children: [
            Text(
              "LS. Edisi Baru",
            ),
            Image.network(
              "https://images.unsplash.com/photo-1665114839470-f57f75b78f82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60",
              width: 30,
              height: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: mySonglist.length,
          itemBuilder: ((context, index) {
            final myList = mySonglist[index];
            return Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    myList.imgLagu,
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myList.judulLagu,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      myList.keterangan,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      myList.diskripsi,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_for_work),
                    ),
                    Text(
                      myList.durasiLagu,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
