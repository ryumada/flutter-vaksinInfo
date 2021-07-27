// import 'dart:convert';
// import 'package:http/http.dart' as http;

class NewsData {
  final String source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  NewsData({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  List get() {
    return newsDataList;
  }

  // factory NewsData.fromJson(Map<String, dynamic> json) {
  //   return NewsData(
  //     source: json['source'],
  //     author: json['author'],
  //     title: json['title'],
  //     description: json['description'],
  //     url: json['url'],
  //     urlToImage: json['urlToImage'],
  //     publishedAt: json['publishedAt'],
  //     content: json['content'],
  //   );
  // }
}

var newsDataList = [
  NewsData(
      source: 'Viva.co.id',
      author: "Agus Rahmat",
      title: "INFOGRAFIK: Pentingya Kita Harus Vaksinasi Covid-19",
      description:
          "Berita INFOGRAFIK: Pentingya Kita Harus Vaksinasi Covid-19 terbaru hari ini",
      url:
          "https://www.viva.co.id/berita/nasional/1389462-infografik-pentingya-kita-harus-vaksinasi-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/07/21/60f7d35e62955-vaksinasi-door-to-door-dilakukan-badan-intelijen-negara-bin_665_374.jpeg",
      publishedAt: "2021-07-22T13:00:04Z",
      content:
          "VIVA  Pemerintah terus mengebut untuk melakukan vaksinasi kepada rakyat Indonesia. Untuk mencapai kekebalan komunitas atau herd immunity, sehingga bisa mengendalikan pandemi COVID-19. Vaksinasi di be… [+555 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Tasya Paramitha, Sumiyati",
      title: "POGI Rekomendasikan Ibu Hamil Divaksin COVID-19, Ini Manfaatnya",
      description:
          "Berita POGI Rekomendasikan Ibu Hamil Divaksin COVID-19, Ini Manfaatnya terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/parenting/1384829-pogi-rekomendasikan-ibu-hamil-divaksin-covid-19-ini-manfaatnya",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/05/31/60b4e5315120c-ilustrasi-hamil-ibu-hamil_665_374.jpg",
      publishedAt: "2021-07-04T08:25:32Z",
      content:
          "VIVA  Perhimpunan Obstetri dan Ginekologi Indonesia (POGI) mendorong dilakukannya vaksinasi COVID-19 untuk ibu hamil. Menurut POGI, ini merupakan salah satu upaya pencegahan untuk melindungi ibu hami… [+723 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Rochimawati, Diza Liane Sahputri",
      title: "Demam Pasca Vaksinasi COVID-19, Dokter: Artinya Anak Sehat",
      description:
          "Berita Demam Pasca Vaksinasi COVID-19, Dokter: Artinya Anak Sehat terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/parenting/1387395-demam-pasca-vaksinasi-covid-19-dokter-artinya-anak-sehat",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2020/12/29/5feb14ee421dc-anak-memakai-masker_665_374.jpeg",
      publishedAt: "2021-07-14T09:36:03Z",
      content:
          "VIVA  Vaksinasi COVID-19 pada anak sudah diperbolehkan, khususnya vaksin dari Sinovac lantaran penelitian membuktikan manfaatnya untuk melindungi tubuh dari virus. Akan tetapi, pemberian vaksin terse… [+872 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Syahdan Nurdin",
      title: "Viral Video Wanita Tuding Vaksin Bikin Positif COVID-19",
      description:
          "Berita Viral Video Wanita Tuding Vaksin Bikin Positif COVID-19 terbaru hari ini",
      url:
          "https://www.viva.co.id/trending/1386203-viral-video-wanita-tuding-vaksin-bikin-positif-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/07/09/60e80ef29aef1-wanita-kerja-di-apotik-tuding-vaksin-bikin-positif-covid-instagram-smart-gram_665_374.jpg",
      publishedAt: "2021-07-09T09:06:45Z",
      content:
          "VIVA  Video seorang wanita bekerja di apotek menuding suntik vaksin membuat orang positif COVID-19 viral di media sosial.\r\nTudingan wanita bejilbab ini diunggah oleh akun Instagram @smart.gram, Jumat… [+418 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Rochimawati, Diza Liane Sahputri",
      title: "Perlukah Suntikan Ketiga Vaksin COVID-19? Ini Kata Vaksinolog",
      description:
          "Berita Perlukah Suntikan Ketiga Vaksin COVID-19? Ini Kata Vaksinolog terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1384985-perlukah-suntikan-ketiga-vaksin-covid-19-ini-kata-vaksinolog",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/25/60d589d6d70cb-vaksin-covid-19_665_374.jpg",
      publishedAt: "2021-07-05T07:12:05Z",
      content:
          "VIVA  Banyak masyarakat yang mulai khawatir terjangkit COVID-19 meski sudah mendapatkan dua dosis vaksin. Tak sedikit yang akhirnya bertanya-tanya apakah perlu untuk menambah alias booster vaksin sel… [+422 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Rochimawati, Diza Liane Sahputri",
      title: "Anak di Bawah 18 Tahun Akan Dapat Vaksin COVID-19?",
      description:
          "Berita Anak di Bawah 18 Tahun Akan Dapat Vaksin COVID-19? terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/parenting/1382793-anak-di-bawah-18-tahun-akan-dapat-vaksin-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/02/04/601c04acf0e34-anak-dan-covid-19_665_374.jpeg",
      publishedAt: "2021-06-25T08:03:30Z",
      content:
          "VIVA  Menteri Kesehatan, Budi Gunadi Sadikin menyebut pihaknya tengah mengkaji jenis vaksin COVID-19 yang dapat diberikan kepada anak-anak di bawah usia 18 tahun. \r\nDijelaskan Menkes saat ini pihakny… [+427 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Rochimawati, Diza Liane Sahputri",
      title: "Cegah Kerumunan, Mobil Vaksinasi COVID-19 Bakal Layani Warga DKI",
      description:
          "Berita Cegah Kerumunan, Mobil Vaksinasi COVID-19 Bakal Layani Warga DKI terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1385798-cegah-kerumunan-mobil-vaksinasi-covid-19-bakal-layani-warga-dki",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/25/60d58a0d1fa0c-vaksin-covid-19_665_374.jpg",
      publishedAt: "2021-07-08T03:11:44Z",
      content:
          "VIVA  Kasus COVID-19 kian bertambah dengan catatan tertinggi yakni 34.379 dan kasus kematian sebanyak 1.040 jiwa. Dalam upaya pemberlakuan pembatasan kegiatan masyarakat (PPKM) darurat, vaksinasi kia… [+1448 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Ezra Sihite",
      title: "Brasil akan Mulai Uji Klinis Vaksin COVID-19 Butanvac",
      description:
          "Anvisa badan kesehatan Brasil dalam sebuah pernyataan mengatakan vaksin itu akan diterapkan dalam dua dosis, berjarak 28 hari.",
      url:
          "https://www.viva.co.id/berita/dunia/1385806-brasil-akan-mulai-uji-klinis-vaksin-covid-19-butanvac",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/30/60dbebbd19388-seorang-tenaga-kesehatan-mengenakan-pakaian-dekontaminasi-alias-hazmat-bertugas_665_374.jpg",
      publishedAt: "2021-07-08T03:28:47Z",
      content:
          "VIVA  Regulator kesehatan Brasil Anvisa pada Rabu memberi lampu hijau untuk vaksin Butanvac COVID-19 yang dikembangkan oleh pusat biomedis Butantan Institute Sao Paulo untuk digunakan pada sukarelawa… [+404 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Daurina Lestari, ABC Indonesia",
      title: "Sudah Divaksin COVID-19, Tapi Kenapa Masih Bisa Tertular?",
      description:
          "Bersama dr Kurniawan Satria Denta di Yogyakarta, kami mencoba menjawab pertanyaan soal vaksin dengan bahasa lebih mudah dipahami.",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1382220-sudah-divaksin-covid-19-tapi-kenapa-masih-bisa-tertular",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/23/60d3006c166a4-vaksin-yang-ada-disebut-tetap-akan-lindungi-diri-dari-varian-baru-corona-tapi-kenapa-masih-bisa-tertular_665_374.jpg",
      publishedAt: "2021-06-23T09:39:42Z",
      content:
          "Masih tidak yakin soal virus corona dan vaksin? Anda tidak sendiri dan ini tidak hanya terjadi di Indonesia.\r\nInformasi soal COVID dan vaksin seringkali membingungkan karena terlalu banyaknya penjela… [+2942 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Tasya Paramitha, Diza Liane Sahputri",
      title: "BPOM: Efikasi Vaksin COVID-19 Moderna 94,1 Persen",
      description:
          "Badan Pengawasan Obat dan Makanan (BPOM) RI kembali menerbitkan Emergency Use Authorization (EUA) untuk vaksin COVID-19 Moderna.",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1384551-bpom-efikasi-vaksin-covid-19-moderna-94-1-persen",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2020/11/22/5fba0d912b865-ilustrasi-vaksin_665_374.jpg",
      publishedAt: "2021-07-02T13:56:19Z",
      content:
          "VIVA  Badan Pengawasan Obat dan Makanan (BPOM) RI kembali menerbitkan Emergency Use Authorization (EUA) untuk Moderna COVID-19 Vaccine. Vaksin COVID-19 Moderna merupakan vaksin yang dikembangkan deng… [+793 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Tasya Paramitha, Diza Liane Sahputri",
      title: "Ledakan COVID-19, Pakar IDI: PPKM Darurat Lebih Masuk Akal",
      description:
          "Berita Ledakan COVID-19, Pakar IDI: PPKM Darurat Lebih Masuk Akal terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1383993-ledakan-covid-19-pakar-idi-ppkm-darurat-lebih-masuk-akal",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/28/60d9c1bc6817b-ilustrasi-virus-corona_665_374.jpg",
      publishedAt: "2021-06-30T12:36:36Z",
      content:
          "VIVA  Ketua Satgas COVID-19 Ikatan Dokter Indonesia (IDI), Prof. Zubairi Djoerban setuju dengan Pemberlakukan Pembatasan Kegiatan Masyarakat (PPKM) darurat. Menurutnya, itu akan sangat membantu terka… [+1060 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Adinda Permatasari, Isra Berlian",
      title: "Vaksin COVID-19 dari Korsel GX-19N Akan Uji Klinik di RI",
      description:
          "Berita Vaksin COVID-19 dari Korsel GX-19N Akan Uji Klinik di RI terbaru hari ini",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1386219-vaksin-covid-19-dari-korsel-gx-19n-akan-uji-klinik-di-ri",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2020/11/22/5fba0e6e6e11d-ilustrasi-vaksin_665_374.jpg",
      publishedAt: "2021-07-09T09:53:19Z",
      content:
          "VIVA  Vaksin COVID-19, GX-19N hasil kerja sama antara PT Kalbe Farma dan Perusahaan asal Korea Selatan, Genexin akan melakukan fase uji klinis fase 2b/3 acak dalam waktu dekat. Uji klinis ini akan me… [+620 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Agus Rahmat, Sherly",
      title: "Ribuan Anak di Tangerang Mulai Vaksinasi COVID-19",
      description:
          "Di Tangsel, pemerintah kota menyiapkan seribu dosis untuk vaksin anak. Di Kota Tangerang, yang sediakan adalah BIN, seribu dosis.",
      url:
          "https://www.viva.co.id/berita/metro/1387260-ribuan-anak-di-tangerang-mulai-vaksinasi-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/03/25/605ca0bfc9e6a-skuad-pss-sleman-jalani-vaksinasi-covid-19_665_374.JPG",
      publishedAt: "2021-07-14T03:10:37Z",
      content:
          "VIVA  Ribuan anak yang berusia 12 hingga 17 tahun yang berada di wilayah Kota Tangerang dan Tangerang Selatan, mulai menjalani proses vaksinasi COVID-19, pada Rabu, 14 Juli 2021.\r\nSeperti di Kota Tan… [+278 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Donny Adhiyasa, Diza Liane Sahputri",
      title: "Susu Steril Ampuh Cegah COVID-19, Dokter: Mitos!",
      description:
          "Dokter spesialis gizi, dr. Juwalita Surapsari, M.Gizi, Sp.GK menyanggah susu steril memiliki khasiat yang setara seperti vaksin.",
      url:
          "https://www.viva.co.id/gaya-hidup/kesehatan-intim/1385527-susu-steril-ampuh-cegah-covid-19-dokter-mitos",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2020/09/21/5f687a1cad8b9-ilustrasi-susu_665_374.jpg",
      publishedAt: "2021-07-07T04:57:25Z",
      content:
          "VIVA  Susu steril yang kerap disebut 'Susu Beruang' tengah menjadi buruan lantaran dianggap mampu mencegah tubuh dari infeksi COVID-19. Rupanya, klaim tersebut dinilai tak tepat oleh pakar gizi dan m… [+448 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Agus Rahmat",
      title: "Bamsoet Minta Cakupan Vaksinasi COVID-19 Untuk Anak Diperluas",
      description:
          "Berita Bamsoet Minta Cakupan Vaksinasi COVID-19 Untuk Anak Diperluas terbaru hari ini",
      url:
          "https://www.viva.co.id/berita/nasional/1383599-bamsoet-minta-cakupan-vaksinasi-covid-19-untuk-anak-diperluas",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2020/09/28/5f715479d1627-ketua-mpr-bambang-soesatyo_665_374.jpg",
      publishedAt: "2021-06-29T05:54:02Z",
      content:
          "VIVA  Ketua Majelis Permusyawaratan Rakyat (MPR) Bambang Soesatyo, menilai pemerintah perlu mendorong lagi penggunaan vaksin untuk anak usia rendah. Setelah Badan Pengawas Obat dan Makanan (BPOM) men… [+692 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Raden Jihad Akbar",
      title: "Ganjar Pranowo Ungkap Jateng Kekurangan Stok Vaksin COVID-19",
      description:
          "Berita Ganjar Pranowo Ungkap Jateng Kekurangan Stok Vaksin COVID-19 terbaru hari ini",
      url:
          "https://www.viva.co.id/berita/nasional/1388747-ganjar-pranowo-ungkap-jateng-kekurangan-stok-vaksin-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/07/14/60eec6ef16248-gubernur-jateng-ganjar-pranowo-mengecek-gudang-vaksin_665_374.jpg",
      publishedAt: "2021-07-19T18:14:01Z",
      content:
          "VIVA  Dalam upaya percepatan vaksinasi nasional, Jawa Tengah rupanya menghadapi kendala stok vaksin. Meski sentra vaksinasi dibuka dan tenaga vaksinator terus ditambah, namun pasokan vaksin dari pusa… [+706 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Raden Jihad Akbar, Sherly (Tangerang)",
      title: "35 Ribu Warga Tangerang Bakal Disuntik Vaksin COVID-19 Besok",
      description:
          "Berita 35 Ribu Warga Tangerang Bakal Disuntik Vaksin COVID-19 Besok terbaru hari ini",
      url:
          "https://www.viva.co.id/berita/metro/1383374-35-ribu-warga-tangerang-bakal-disuntik-vaksin-covid-19-besok",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/28/60d98d3a5663a-vaksinasi-di-tangerang_665_374.jpg",
      publishedAt: "2021-06-28T08:55:55Z",
      content:
          "VIVA  Pemerintah Kabupaten Tangerang mendapatkan tambahan Vaksin COVID-19 sebanyak 35 ribu dari pihak Kementerian Kesehatan. Hal ini, untuk membantu percepatan penyelesaian program vaksinasi di daera… [+638 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Febriewulan",
      title: "Melirik Upaya Petugas Kesehatan dalam Pemantauan Pasien COVID-19",
      description:
          "Berita Melirik Upaya Petugas Kesehatan dalam Pemantauan Pasien  COVID-19 terbaru hari ini",
      url:
          "https://www.viva.co.id/vstory/kesehatan-vstory/1386693-melirik-upaya-petugas-kesehatan-dalam-pemantauan-pasien-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/07/12/60ebc4909d427-melirik-upaya-petugas-kesehatan-dalam-pemantauan-pasien-covid-19_665_374.jpg",
      publishedAt: "2021-07-12T04:27:03Z",
      content:
          "VIVA Indonesia saat ini tengah berada dalam kondisi pandemi COVID-19 yang masih berada di puncak penambahan angka positif setiap harinya. Hari ini (09/07/2021) total kasus yang tercatat sudah sejumla… [+1017 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Daurina Lestari",
      title: "WHO: Negara-negara Miskin Kekurangan Pasokan Vaksin COVID-19",
      description:
          "Berita WHO: Negara-negara Miskin Kekurangan Pasokan Vaksin COVID-19 terbaru hari ini",
      url:
          "https://www.viva.co.id/berita/dunia/1381805-who-negara-negara-miskin-kekurangan-pasokan-vaksin-covid-19",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/04/27/6087903e2a5fb-vaksin-astrazeneca_665_374.jpg",
      publishedAt: "2021-06-22T05:28:40Z",
      content:
          "VIVA  Lebih dari separuh negara miskin penerima dosis vaksin COVID-19 program COVAX tidak memiliki pasokan yang cukup untuk melanjutkan vaksinasi, menurut pejabat Organisasi Kesehatan Dunia (WHO), Se… [+697 chars]"),
  NewsData(
      source: 'Viva.co.id',
      author: "Ezra Sihite, BBC Indonesia",
      title:
          "Jerman Izinkan Warga Disuntik Vaksin COVID Beda Merek, Lebih Manjur?",
      description:
          "Berita Jerman Izinkan Warga Disuntik Vaksin COVID Beda Merek, Lebih Manjur? terbaru hari ini",
      url:
          "https://www.viva.co.id/berita/dunia/1382118-jerman-izinkan-warga-disuntik-vaksin-covid-beda-merek-lebih-manjur",
      urlToImage:
          "https://thumb.viva.co.id/media/frontend/thumbs3/2021/06/23/60d2c39152df8-vaksin-covid-jerman-izinkan-warga-disuntik-vaksin-beda-merek-apa-lebih-manjur-tangkal-virus_665_374.jpg",
      publishedAt: "2021-06-23T05:19:58Z",
      content:
          "Kanselir JermanAngela Merkel menerima vaksin Moderna sebagai suntikan kedua, setelah sebelumnya disuntik dengan Oxford-AstraZeneca. Apa ada dampak menerima dua vaksin berbeda?\r\nGetty Images\r\nMerkel p… [+965 chars]"),
];


// Future<NewsData> fetchNewsData() async {
//   final response = await http.get(Uri.parse(
//       'https://newsapi.org/v2/everything?q=vaksin%20covid%20covid-19&apiKey=1ff203ff26644382a48a530ac5ec5128'));

//   if (response.statusCode == 200) {
//     return NewsData.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to load News Data');
//   }
// }
