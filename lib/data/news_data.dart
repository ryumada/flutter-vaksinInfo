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
          "VIVA – Pemerintah terus mengebut untuk melakukan vaksinasi kepada rakyat Indonesia. Untuk mencapai kekebalan komunitas atau herd immunity, sehingga bisa mengendalikan pandemi COVID-19. Vaksinasi di beberapa negara maju, bahkan membuat mereka mulai mengendorkan protokol kesehatan.\n\nVaksin COVID-19 bagi masyarakat, penting dilakukan untuk menghindari tingkat kefatalan akibat paparan virus Corona. Memang tak menjamin kita kebal dari COVID-19. Tetapi setidaknya fatalitas tidak terlalu berat bila memang terpapar.\n\nSelain itu, vaksinasi juga bisa menyelamatkan orang lain. Karena jika dengan vaksin tubuh kita bisa mengatasi virus, kemungkinan menularkan menjadi semakin rendah. Apabila vaksinasi telah dilakukan sesuai target pemerintah, 70 persen warga."),
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
          "VIVA – Perhimpunan Obstetri dan Ginekologi Indonesia (POGI) mendorong dilakukannya vaksinasi COVID-19 untuk ibu hamil. Menurut POGI, ini merupakan salah satu upaya pencegahan untuk melindungi ibu hamil yang juga rentan terpapar virus corona.\n\nSekjen POGI, Prof. Dr. dr. Budi Wiweko, SpOG(K), mengatakan, keputusan ini diambil mengacu pada rekomendasi-rekomendasi dari organisasi-organisasi profesi di dunia, yang telah lebih dulu menganjurkan pemberian vaksin untuk ibu hamil.\n\n\"Ibu hamil itu harus dapat vaksin. Bahwa seorang perempuan itu tidak perlu menunda kehamilan, walaupun dia belum dapat vaksin. Silakan, tetap vaksin itu tidak boleh menyebabkan dia menunda kehamilan, karena dibuktikan datanya itu aman,\" ujarnya saat konferensi pers yang digelar virtual, baru-baru ini.\n\nLebih lanjut, Budi menyebutkan, ibu hamil yang difokuskan untuk mendapatkan vaksin adalah mereka yang berisiko tinggi untuk terpapar COVID-19.\n\n\"Ibu hamil yang difokuskan untuk mendapatkan vaksin adalah ibu hamil yang berisiko tinggi, dengan kencing manis (diabetes), ibu hamil dengan obesitas. Itu yang menjadi rekomendasi prioritas,\" kata dia.\n\nBudi juga mengatakan, vaksinasi untuk ibu hamil dinilai aman. Hal itu dibuktikan pada penelitian Preliminary Findings of mRNA COVID-19 Vaccine Safety in Pregnant Persons, yang dilakukan di Amerika.\n\n\"Mengenai keamanan, Inggris merujuk pada data keamanan penelitian Preliminary Findings di Amerika. Sekitar 35 ribu (partisipan) untuk Pfizer, BioNTech dan Moderna. Tidak ada isu yang mengkhawatirkan. Walaupun clinical trial diketahui belum terasa,\" pungkasnya.\n\nDalam kesempatan itu, Budi juga memastikan bahwa vaksin COVID-19 tidak mengandung bahan-bahan yang berbahaya bagi kehamilan.\n\n\"Vaksin yang ada sekarang tidak mengandung zat-zat yang berbahaya bagi kehamilan. Terutama pada vaksin-vaksin yang mengandung non-life virus, yang dinilai sangat aman. Tidak ada KIPI (Kejadian Ikutan Pasca Imunisasi) yang bermakna,\" tuturnya.\n\nDinilai aman untuk diberikan pada ibu hamil, Prof. Budi turut membeberkan manfaat vaksin untuk ibu hamil.\n\n\"Pertama tentu karena (ada) lebih dari setengah (kasus) asimptomatik (OTG). Tentunya sangat penting perlindungan bagi ibu hamil juga perlindungan buat nakes,\" terang dia.\n\n\"Keunggulan lain vaksin, tentu ibu hamil terhindar dari risiko morbiditas, kematian bayi, prematuritas, transmisi ini sangat penting yaitu bayinya. Itu juga dianggap bisa bermanfaat,\" imbuh Prof. Budi Wiweko."),
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
          "VIVA – Vaksinasi COVID-19 pada anak sudah diperbolehkan, khususnya vaksin dari Sinovac lantaran penelitian membuktikan manfaatnya untuk melindungi tubuh dari virus. Akan tetapi, pemberian vaksin tersebut memberi efek samping yang membuat sebagian orangtua khawatir seperti demam.\n\nSejatinya, demam adalah reaksi paling umum saat benda asing memasuki tubuh, vaksin salah satunya. Tak heran, vaksin COVID-19 Sinovac sendiri dibuat dengan metode melemahkan virusnya. Hal tersebut menimbulkan reaksi dari sistem imun tubuh, termasuk demam.\n\n\"Kalau anak demam (pasca vaksinasi), itu mekanisme tubuh anak sehat. Kemasukan virus, bakteri, jamur pasti tubuh akan melawan itu dengan demam. Demam, anak sehat artinya,\" ujar Dokter Spesialis Anak @RS Pondok Indah - Puri Indah, dr. Ellen Wijaya, Sp.A, dalam Media Gathering Virtual, Rabu 14 Juli 2021.\n\nDokter Ellen menjelaskan, vaksin yang diberikan akan membentuk respons antibodi tubuh dan manifestasinya adalah demam. Kondisi itu, tegasnya, bukan tanda bahaya melainkan hal yang normal. Lantas, apa yang perlu dilakukan orang tua?\n\n\"Ukur suhu dulu. Kalau di atas 38 derajat, gelisah, rewel, boleh beri antipiretik misal parasetamol atau kompres. Kalau anak sehat-sehat aja, observasi cukup,\" tuturnya lagi.\n\nBentuk efek samping paling umum lainnya adalah nyeri di bagian tempat suntikan. Saat anak mengeluhkan hal ini, dokter Ellen menyarankan untuk dikompres namun tak perlu khawatir lantaran ini berbahaya.\n\n\"Kalau ada keraguan KIPI (Kejadian Ikutan Pasca Imunisasi) berat, boleh lapor ke tenaga medis yang lakukan imunisasi,\" terangnya.\n\nPemberian vaksin COVID-19 pada anak, kata dokter Ellen, dilakukan sebanyak 2 dosis dengan jeda satu bulan. Selain itu, vaksinasi masih diberikan pada anak usia 12-17 tahun alias kelompok remaja.\n\n\"Subjek anak 12-17 tahun dan interval juga diberikan sesuai penelitian yang ada. Dosis 2 kali interval 1 bulan dan itu berdasar efektivitas dan kemananan penelitian,\" terangnya.\n\nSetelah divaksinasi, anak bisa menjalani aktivitas seperti biasa apabila tak ada keluhan. Dokter Ellen menyarankan agar sebelum vaksinasi, orangtua memberi edukasi tepat sehingga anak lebih memahaminya.\n\n\"Kalau anak remaja, kasih tahu manfaatnya ke anak. Jelasin juga letak suntikan di mana. Jangan begadang juga. Optimalisasi kondisi anak dengan istirahat cukup,\" kata dia."),
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
          "VIVA  Video seorang wanita bekerja di apotek menuding suntik vaksin membuat orang positif COVID-19 viral di media sosial.\r\nTudingan wanita bejilbab ini diunggah oleh akun Instagram @smart.gram, Jumat (9/7). Dalam unggahan tersebut terlihat seorang wanita mengenakan masker merah. Saat ia mau bicara maskernya dibuka.\n\nIa pun memulai pembicaraanya terkait vaksin yang justru membuat orang terpapar COVID-19.\n\n\"Kawan-kawan semua, Saya ini kerja di apotek. Hampir setiap hari orang yang datang saya tanya, yang keluarganya positif itu, Habis vaksin enggak? Baru aja ini lagi. Banyak saksinya. Iya habis vaksin yang sakit.\"\n\nDapat dua hari, meriang, enggak bisa nyium dan kawan-kawan, udah positif dan menularkan semua orang ini.\n\nTerus kok diem sih semuanya? Satu hari berjuta-juta lo yang mau disuntik ini. Apa enggak ada yang bisa berbuat apa-apa ini?\" ujar wanita yang mengaku bekerja di apotek ini.\n\nKejelasan wanita yang berada di dalam video ini belum diketahui dan bekerja di apotik mana. Tampaknya wanita ini keberatan dengan program pemerintah soal vaksinasi COVID-19.\n\nBukan hanya keberatan, tapi wanita ini juga mengajak dengan menyindir warga kenapa semuanya diam dan tidak melakukan apa-apa.\n\nPernyataan wanita bekerja di apotek ini mendapatkan reaksi beragam dari netizen. Ada yang membenarkan dan ada juga yang menenatangnya.\n\n\"Kayaknya bener keluarga saya 1 keluarga jd positif 1hr sesudah vaksin,\" jelas @herinmarlina.\n\nSementara netizen lain berpendapat berbeda. \"Saya udh vaksin bu, gak ada tuh positif wkwk tolong lagi suasana kisruh gini jgn bikin tambah beban negara deh bu,\" komen @prrssdef.\n\n\"Mohon maa mbak. Nakes bukan ya?kok masi aja ga paham kyk begini.. Ada bberapa case ya knp kok abis divaksin terus bisa positif covid 1. Emang udh covid duluan sebelum divaksin. Kebetulan ga ada gejala...,\" jelas @assyifatuzada."),
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
          "VIVA – Banyak masyarakat yang mulai khawatir terjangkit COVID-19 meski sudah mendapatkan dua dosis vaksin. Tak sedikit yang akhirnya bertanya-tanya apakah perlu untuk menambah alias booster vaksin selanjutnya.\n\nDari penelitian vaksin yang telah mendapat persetujuan Organisasi Kesehatan Dunia (WHO), tercatat bahwa efektivitasnya berlaku hanya dalam beberapa bulan ke depan. Hal itu menimbulkan pertanyaan, akan perlunya tambahan vaksin yang diberikan usai dua dosis.\n\n\"Rekomendasi di indonesia masih dua kali vaksinasi,\" kata Vaksinolog dr. Dirga Sakti Rambe M,sc, Sp,PD, dalam acara Hidup Sehat, TvOne, Senin 5 Juli 2021.\r\nMenurut dokter spesialis penyakit dalam itu, lebih baik memprioritaskan untuk mencapai Herd Immunity dengan cakupan 70 persen masyarakat yang divaksinasi. Dengan begitu, penularan COVID-19 bisa lebih diminimalisasi sehingga kasusnya bisa menurun dan mencegah terjadinya keparahan gejala hingga angka kematian.\n\n\"Yang sudah dua kali vaksinasi, cukup. Termasuk bagi tenaga kesehatan. Lebih baik tingkatkan dulu cakupan imunisasi (herd immunity),\" ujarnya.\n\nTerlebih, stok vaksin di Indonesia juga belum tersedia dalam jumlah banyak lantaran masih bergantung pada produksi dari negara lain seperti China dan Amerika Serikat. Namun, Dirga tak memungkiri bahwa tambahan dosis vaksinasi bisa saja diberikan dengan menunggu hasil penelitian terlebih dahulu.\n\n\"Banyak saudara kita yang belum vaksinasi dan stok vaksin terbatas. Tentu akan ada kemungkinan bahwa perlu pemberian vaksinasi ulang tapi saat ini belum direkomendasikan,\" kata Dirga lagi."),
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
          "VIVA – Menteri Kesehatan, Budi Gunadi Sadikin menyebut pihaknya tengah mengkaji jenis vaksin COVID-19 yang dapat diberikan kepada anak-anak di bawah usia 18 tahun. \n\nDijelaskan Menkes saat ini pihaknya telah mengamati dua vaksin yang mungkin bisa diberikan kepada anak-anak di bawah usia 18 tahun.\n\n\"Kita sedang mengkaji vaksin-vaksin mana yang sudah memiliki Emergency Use Authorization (EUA) untuk usia muda. Yang sudah kita amati ada dua yang ada di list kita, satu Sinovac yang bisa umur 3-17, kemudian satu lagi Pfizer yang bisa umur 12-17 itu sudah keluar EUAnya,\" kata Menkes dalam virtual conference, Jumat 25 Juni 2021.\n\nSelain itu, Kemenkes juga telah berbicara dengan Indonesia Technical Advisory Group on Immunization (ITAGI) terkait dengan pemberian vaksin ini kepada anak di bawah usia 18 tahun. \n\n\"Kita sudah berbicara dengan ITAGI mengenai hal ini. Kita juga harus mendengarkan pihak-pihak lainnya terkait pemberian vaksin ini kepada remaja,\" kata Menkes Budi.\n\nSelain itu, kata Budi pemerintah juga akan melihat bagaimana sejumlah negara seperti di Amerika, Eropa dalam pemberian vaksin kepada anak-anak.\n\n\"Bagaimana mereka memberikan vaksin untuk di bawah usia 18 tahun dan di grup mana mereka memberikan vaksin, sehingga kita bisa mengeluarkan keputusan yang komprehensif berdasarkan data yang ada di kita, data penggunaan di negara lain dan data ilmiah kesehatan  EUA yang sudah diberikan terhadap perusahaan vaksin tersebut,\" kata Menkes Budi.\n\nDi sisi lain, kata Menkes, berdasarkan data yang ada di seluruh dunia mengenai tingkat keparahan COVID-19 pada anak dibawah usia 18 tahun. Dijelaskan bahwa lebih banyak anak di bawah usia 18 tahun yang terpapar COVID-19 sembuh, yakni sebanyak 99 persen. Berbeda dengan pasien usia di atas 18."),
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
          "VIVA – Kasus COVID-19 kian bertambah dengan catatan tertinggi yakni 34.379 dan kasus kematian sebanyak 1.040 jiwa. Dalam upaya pemberlakuan pembatasan kegiatan masyarakat (PPKM) darurat, vaksinasi kian digencarkan, termasuk melalui mobil vaksin keliling.\n\nPemerintah Provinsi (Pemprov) DKI Jakarta dan Dinas Kesehatan DKI Jakarta melakukan uji coba Mobil Vaksin Keliling yang berlokasi di RPTRA Cempaka Sari, Jakarta Timur.\n\nHadirnya terobosan layanan Mobil Vaksin Keliling ini, sebagai kerja sama dengan Magenta Mediatama, diharapkan dapat membantu Pemprov DKI Jakarta menjangkau lebih banyak warga untuk bisa mendapatkan layanan vaksinasi.\n\nDirektur Utama Magenta Mediatama, Andry Sutradjaja menjelaskan, vaksinasi merupakan salah satu upaya mencegah penyebaran COVID-19, selain menerapkan protokol kesehatan yang ketat. Apalagi saat ini tengah berkembang varian baru COVID-19 dan menular lebih cepat dengan dampak yang lebih berat.\n\n\“Maka, vaksinasi diharapkan menjadi salah satu upaya dalam menekan penularan virus ini. Oleh karena itu, melalui inisiatif penyediaan mobil vaksin keliling ini, diharapkan dapat membantu percepatan program vaksinasi COVID-19, mengurangi potensi kerumunan pada saat proses vaksinasi COVID-19, serta dapat menjangkau wilayah yang padat dan terpencil,\" kata Andry.\n\nPerlu diketahui, target sasaran vaksinasi COVID-19 secara nasional yang dicanangkan pemerintah sebanyak 181.554.465 warga. Pemerintah melaporkan jumlah penerima vaksin COVID-19 per 6 Juli 2021 tercatat sebanyak 33.176.029 warga Indonesia yang mendapat suntikan vaksin dosis pertama, atau baru sebesar 18,27 persen dari total target vaksinasi nasional.\n\nAdapun warga yang telah mendapat vaksin COVID-19 dosis kedua atau lengkap baru mencapai 14.267.980 orang, atau sebesar 7,86 persen dari total target vaksinasi nasional.  Melihat target yang masih jauh, hingga kini pemerintah terus menggencarkan vaksinasi massal gratis di sejumlah daerah, terutama di DKI Jakarta sebagai upaya preventif penanganan COVID-19.\n\nUntuk vaksinasi\n\nKepala Dinas Kesehatan Provinsi DKI Jakarta, dr. Widyastuti menjelaskan bahwa mobil layanan vaksinasi COVID-19 keliling dapat mempermudah warga DKI Jakarta untuk vaksinasi.\n\nWidya juga tidak bosan untuk terus mengajak seluruh masyarakat untuk sama-sama berikhtiar melawan pandemi COVID-19 dengan mengikuti vaksinasi yang sudah disediakan pemerintah dan tetap .\n\n\"Oleh karenanya, dukungan dari masyarakat juga sangat penting. Karena, tanpa dukungan masyarakat, upaya-upaya yang telah dilakukan ini akan sulit berjalan dengan optimal,\” tuturnya.\n\nWalikota Jakarta Timur, Muhammad Anwar, menyebut bahwa keberadaan mobil vaksin keliling seperti ini sangat membantu, khususnya warga yang tidak memiliki transportasi maupun para lansia,\n\nsehingga mereka tidak perlu lagi repot-repot mencari tempat vaksinasi COVID-19. Dengan cara seperti ini, diharapkan target vaksinasi terhadap 7,5 juta warga DKI Jakarta pada akhir Agustus 2021 dapat segera tercapai.\n\n\"Untuk itu, mari bersama-sama kita tunjukkan bahwa kita mampu untuk menghadapi dan melewati pandemi ini, salah satunya dengan mengikuti program vaksinasi COVID-19. Silahkan mengunjungi sentra-sentra vaksin yang telah disiapkan, termasuk melalui Mobil Vaksin Keliling ini,\” ujar Muhammad Anwar.\n\nSaat ini Pemprov DKI akan menyiapkan 10 unit mobil vaksin keliling, dan setiap mobil vaksin keliling akan berada di 2 titik dengan target jumlah warga yang divaksinasi sebanyak 100 orang per hari per titik.\n\nDi setiap mobil vaksin keliling ditempatkan lima petugas yang terdiri dari 2 tenaga kesehatan dan 3 orang tenaga non medis. Untuk tahap uji coba, titik lokasi Mobil Vaksin Keliling akan ditempatkan di posko Jakarta Timur yang berlokasi di RPTRA Cempaka Sari, Cakung Barat, Jakarta Timur.\n\n\"Dengan mobil vaksin keliling, diharapkan bisa menjadi salah satu upaya yang bisa dilakukan untuk melawan penyebaran virus COVID-19, agar Jakarta dan Indonesia bisa lebih sehat dan lebih aman bagi kita semua,\" kata Andry Sutradjaja."),
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
