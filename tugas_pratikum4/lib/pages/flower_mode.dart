class Flower {
  final String gambar;
  final String title;
  final String description;
  final double rating;
  const Flower({
    required this.gambar,
    required this.title,
    required this.description,
    required this.rating,
  });
}

List<Flower> listFlower = [
  const Flower(
      gambar: "assets/columbine.jpg",
      title: "Columbine",
      description:
          "Bunga Columbine merupakan tanaman yang mudah tumbuh, abadi dan menawarkan bunga musiman sepanjang tahunnya, bunga ini juga dijadikan sebagai jimat cinta.",
      rating: 4.8),
  const Flower(
      gambar: "assets/cosmos.jpg",
      title: "Cosmos",
      description:
          "Bunga Cosmos termasuk dalam tanaman edible atau bisa dimakan sebagai campuran salad sayur dan smoothies.",
      rating: 4.6),
  const Flower(
      gambar: "assets/sakura.jpg",
      title: "Sakura",
      description:
          "Pohon Sakura berbunga setahun sekali, kuncup bunga sakura jenis someiyoshino mulai terlihat di penghabisan musim dingin dan bunganya mekar di penghabisan bulan Maret hingga awal bulan April di saat cuaca mulai hangat.",
      rating: 5.0),
  const Flower(
      gambar: "assets/dahlia.jpg",
      title: "Dahlia",
      description:
          "Bunga Dahlia terdiri dari ratusan kultivar. Sebagian besar varietas tanaman Dahlia menghasilkan bunga yang warnanya cerah dan mempesona, sehingga Dahlia merupakan komoditas penting bagi industri bunga potong dan tanaman pot.",
      rating: 4.5),
  const Flower(
      gambar: "assets/krisan.jpg",
      title: "Krisan",
      description:
          "Bunga Krisan biasanya dijadikan sebagai tanaman hias atau sebagai bunga petik. Bunga ini juga bermanfaat sebagai fungisida dan insektisida nabati, pada bonggol bunganya mempunyai senyawa piretrin, senyawa yang menghasilkan racun dan bersifat mengusir dan membunuh nyamuk dan serangga.",
      rating: 4.3),
  const Flower(
      gambar: "assets/Lily.jpg",
      title: "Lily",
      description:
          "Bunga lily dapat dimanfaatkan sebagai bahan alami herbal untuk kesehatan tubuh, seperti menambah stamina, Meningkatkan kekuatan otot tubuh, dll.",
      rating: 4.5),
  const Flower(
      gambar: "assets/makro.jpeg",
      title: "Makro",
      description:
          "Bunga makro memiliki kepala yang besar. Bunga ini tumbuh dengan kecapaian maksimal hingga 2,5 meter dengan kepalanya yang besar tersebut.",
      rating: 5.0),
  const Flower(
      gambar: "assets/rose.jpg",
      title: "Rose",
      description:
          "Bunga Rose dapat mengeluarkan bau aroma yang sangat harum. Hasil penelitian menyatakan bahwa bunga mawar juga mengandung vitamin C.",
      rating: 4.2),
  const Flower(
      gambar: "assets/tulip.jpg",
      title: "Tulip",
      description:
          "Bunga Tulip merupakan tumbuhan tahunan berumbi yang tingginya antara 10–70 cm, daunnya berlilin, berbentuk sempit memanjang berwarna hijau nuansa kebiru-biruan, dan bunganya berukuran besar terdiri 6 helai daun mahkota.",
      rating: 4.9),
];
