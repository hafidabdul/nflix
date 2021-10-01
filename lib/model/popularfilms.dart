import 'package:nflix/model/actor.dart';

class PopularFilm {
  String name;
  String imageUrls;
  double rate;
  String description;
  int viewer;


  PopularFilm(
      {required this.name,
      required this.imageUrls,
      required this.rate,
      required this.description,
      this.viewer = 0,
      });
}




var popularFilmList = [
  PopularFilm(
    
      name: "Bolu Pisang Airaas",
      rate: 2,
      viewer: 2,
      description:
          "Produk Kue tin-tin merupakan produk roti yang dapat dijadikan sebagai bahan baku untuk kemudian diolah kembali menjadi berbagai produk makanan. Dibuat dari bahan pilihan berkualitas tinggi dan bersertifikat halal, kami yakin mampu memproduksi roti dengan kualitas yang baik.",
      imageUrls: "assets/gmbr1.jpg",
     ),
  PopularFilm(
      name: "Brownies Bakar Airaas",
      rate: 2,
      viewer: 2,
      description:
          "Produk Kue tin-tin merupakan produk roti yang dapat dijadikan sebagai bahan baku untuk kemudian diolah kembali menjadi berbagai produk makanan. Dibuat dari bahan pilihan berkualitas tinggi dan bersertifikat halal, kami yakin mampu memproduksi roti dengan kualitas yang baik.",
      imageUrls: "assets/gmbr2.jpg",
      ),
  PopularFilm(
      name: "Lapis Legit Spesial Nganjoek",
      rate: 2,
      viewer: 2,
      description: "enak",
      imageUrls: "assets/gmbr3.jpg",
      ),
  PopularFilm(
      name: "Spikoe TinTin premium",
      rate: 2,
      viewer: 2,
      description: "enak",
      imageUrls: "assets/gmbr4.jpg",
      ),
  PopularFilm(
      name: "Brownis kukus marble Airaas",
      rate: 2,
      viewer: 2,
      description: "enak",
      imageUrls: "assets/gmbr5.jpg",
      ),
  PopularFilm(
      name: "Bolen Airaas",
      rate: 2,
      viewer: 2,
      description: "enak",
      imageUrls: "assets/gmbr6.jpg",
     ),
];
