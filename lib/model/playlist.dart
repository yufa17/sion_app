class Playlist {
  final String imgUrl;
  final String judul;
  final String jumlahLagu;
  final String waktu;
  final String hari;

  Playlist(this.imgUrl, this.judul, this.jumlahLagu, this.waktu, this.hari);
}

final List<Playlist> myPlaylist = [
  Playlist(
    "https://images.unsplash.com/photo-1504253163759-c23fccaebb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "Favorit",
    "5",
    "17:00",
    "Weekdays",
  ),
  Playlist(
    "https://images.unsplash.com/photo-1504253163759-c23fccaebb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "Sabat 12 Feb",
    "14",
    "17:45",
    "Jum",
  ),
  Playlist(
    "https://images.unsplash.com/photo-1504253163759-c23fccaebb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "Waktu pagi",
    "14",
    "04:39",
    "Setiap hari",
  ),
  Playlist(
    "https://images.unsplash.com/photo-1504253163759-c23fccaebb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "Ibadah Sore",
    "14",
    "17:45",
    "Jum",
  ),
  Playlist(
    "https://images.unsplash.com/photo-1504253163759-c23fccaebb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "Bangun Pagi",
    "14",
    "17:45",
    "Jum",
  ),
];
