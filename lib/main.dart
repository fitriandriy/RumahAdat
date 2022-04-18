import 'package:flutter/material.dart';
import 'package:rumah_adat/DataModel.dart';
import 'package:rumah_adat/Detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> namaRumahAdat = [
    'Rumah Gadang',
    'Rumah Joglo',
    'Rumah Limas',
    'Rumah Honai',
    'Rumah Bolon',
    'Rumah Sasak',
    'Rumah Mbaru Niang'
  ];

  static List<String> description = [
    'Rumah Gadang adalah nama untuk rumah tradisional adat Minangkabau. Minangkabau merupakan salah satu kelompok etnis yang berada di Provinsi Sumatera Barat.\n\nRumah Gadang utama biasanya dibangun di atas tanah yang cukup luas dan milik keluarag induk secara turun temurun.\n\nTidak jauh dari kompleks rumah Gadang, biasanya didirikan surau keluarga yang berfungsi sebagai tempat berkumpul pada pemuda atau sebagai tempat untuk menyelanggarakan segala bentuk kegiatan sosial dan keagamaan.\n\nDikutip dari buku Cerita Rakyat dari Sumatera Barat 3 (2001) Navis A.A, Rumah Gadang juga disebut dengan nama lain oleh masyarakat Sumatera Barat adalah Rumah Bagonjong atau juga menyebut dengan nama Rumah Baanjung.',
    'Rumah Joglo adalah rumah adat dari Jawa Tengah yang pada umumnya dibangun dengan menggunakan kayu jati. Ciri khas rumah Joglo dapat dikenali pada atapnya yang berbentuk tajug atau semacam atap piramida yang mengerucut.\n\nIstilah Joglo sendiri berasal dari kata "tajug" dan "loro" yang disingkat juglo dan memiliki makna penggabungan dua tajug. Dalam perkembangannya, penyebutan juglo berubah menjadi joglo.\n\nRumah Joglo merupakan sebuah simbol yang menunjukkan status sosial masyarakat Jawa zaman dulu. Maka dari itu, meski dikenal sebagai rumah orang Jawa pada zaman dulu, tidak semua masyarakat Jawa mampu membangunnya.\n\nOrang yang mampu memiliki rumah joglo adalah masyarakat yang status sosialnya tinggi dan kemampuan ekonominya lebih. Hal itu dikarenakan bahan yang digunakan untuk membangun rumah joglo adalah kayu jati yang kualitasnya sangat bagus dan harganya mahal.\n\nSelain itu, biaya pembangunannya juga tinggi karena waktu yang dibutuhkan untuk mendirikan rumah Joglo sangat lama. Maka tidak heran apabila zaman dulu hanya raja, bangsawan, dan orang kaya yang mampu membangun rumah Joglo.',
    'Rumah Limas adalah rumah tradisional Provinsi Sumatera Selatan. Gaya Rumah Limas seperti rumah panggung, memiliki lima tingkat yang berfilosofi dengan menyesuaikan geografi, dan kepercayaan masyarakat setempat.\n\nSesuai dengan namanya, Rumah Limas adalah rumah tradisional berbentuk limas yang dibuat dengan gaya panggung. Bangunan khas daerah Palembang ini dibangun bertingkat. Kumpulan tingkat-tingkatnya disebut masyarakat sebagai Bengkalis yang memiliki makna tersendiri. Luasan Rumah Limas berkisar mulai dari 400 hingga 1000 meter persegi, sering kali dipinjamkan pemilik rumah untuk digunakan sebagai tempat pesta pernikahan dan acara adat.\n\nHampir seluruh bagian dari Rumah Limas terbentuk dari kayu. Pemilihan kayu dilakukan bukan tanpa sebab, namun menyesuaikan dengan karakter kayu dan kepercayaan masyarakat di Sumatera Selatan. Uniknya, jenis kayu-kayu yang digunakan merupakan kayu unggulan dan dikabarkan hanya tumbuh subur di daerah yang beribukota di Palembang.',
    'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua, hanya dapat temui pada suku Dani tepatnya di lembah Baliem, Kabupaten Jayawijaya, Papua.\n\nHonai merupakan sebutan untuk rumah adat yang ditempati oleh laki-laki. Sementara itu, rumah untuk perempuan memiliki sebutan yang berbeda, yaitu, Ebe\'ai. Keduanya sama-sama rumah khas Papua dan mampu menampung lima hingga sepuluh orang.\n\nRumah ini memiliki ciri khas yaitu berbentuk dasar lingkaran dengan rangka kayu dan beratap kerucut yang terbuat dari jerami. Tinggi rumahnya hanya mencapai 2,5 meter. Uniknya, semua bahannya berasal dari kayu dan jerami atau ilalang.\n\nRumah Honai tidak memiliki jendela dan hanya ada satu pintu. Hal ini bertujuan untuk melindungi dari suhu dingin, mengingat suhu di sana bisa mencapai 10-15 derajat celcius pada waktu malam. \n\nSementara bentuk rumah dengan atap menutup hingga ke bawah ini ternyata bertujuan untuk melindungi seluruh permukaan dinding agar tidak terkena air hujan. Sekaligus dapat meredam hawa dingin agar tidak masuk ke dalam rumah. Satu rumah honai memiliki 2 lantai, menariknya, meskipun mungil di dalam rumah ada dua lantai dengan fungsi yang berbeda.',
    'Rumah Bolon merupakan rumah adat suku Batak, Sumatera Utara. Tidak hanya sebagai hunian, rumah adat tersebut juga banyak dicari khususnya bagi wisatawan luar pulau Sumatera. Rumah yang juga disebut sebagai rumah Gorga ini memiliki sejarah dan filosofi tersendiri bagi Suku Batak.\n\nBagi masyarakat Batak rumah tersebut melambangkan status atau kelas sosial yang dimiliki. Rumah Bolon sendiri terdiri dari beberapa jenis yang berbeda sesuai dengan suku Batak tersebut.\n\nSuku Batak yang berada di Tapanuli terbagi menjadi beberapa golongan yaitu Batak Pakpak, Batak Karo, Batak Simalungun, Batak Karo, Batak Angola dan Batak Mandailing. Maka jangan heran jika setiap bangunan memiliki bentuk atau ciri khas yang tidak sama.',
    'Rumah adat Sasak dibagi menjadi tiga tipe yaitu Bale Bonter, rumah yang dimiliki pejabat desa. Bale Kodong untuk warga yang baru menikah atau untuk para orang tua yang ingin menghabiskan masa tuanya. Sedangkan Bale Tani, adalah tempat tinggal bagi yang sudah berkeluarga.\n\nMengutip dari laman Pesona Indonesia, Bale Tani terbuat dari kayu dengan dinding yang terbuat dari anyaman bambu dan beratapkan daun alang-alang kering. Bale Tani terbagi menjadi dua bagian yaitu Bale Dalam dan Bale Luar, ruangan Bale Dalam biasanya diperuntukkan untuk anggota keluarga wanita, yang sekaligus merangkap sebagai dapur. Sedangkan ruangan Bale Luar diperuntukkan anggota keluarga lainnya, dan juga berfungsi sebagai ruang tamu.',
    'Mbaru Niang merupakan rumah adat NTT yang hanya ada di Wae Rebo. Ini merupakan kawasan kampung adat yang berada di pegunungan wilayah Manggarai. Banyak keunikan dari rumah ini yang bisa membuatmu terkagum-kagum.\n\nPada artikel kali ini, Kanian akan mengajak kamu berkenalan dengan Mbaru Niang, rumah adat NTT yang sangat eksotis. Dijamin, kamu pasti ingin segera melihatnya langsung di Wae Rebo!\n\nHal yang paling mencolok mata ketika melihat rumah adat NTT Mbaru Niang adalah bentuknya yang menyerupai kerucut. Namun, jika kamu benar-benar memperhatikan, bentuk keseluruhan dari rumah Mbaru Niang nyatanya adalah limas, di mana selimutnya berbentuk kerucut, sedangkan alasnya berbentuk lingkaran.\n\nBentuk ini pun punya filosofi tersendiri, loh! Dalam budaya Wae Rebo, bentuk kerucut menjadi simbol perlindungan dan persatuan rakyat. Sementara itu, bentuk lingkaran pada lantai rumah adat NTT ini melambangkan harmonisasi dan keadilan dalam keluarga maupun warga.'
  ];

  static List url = [
    'https://upload.wikimedia.org/wikipedia/commons/f/fd/Rumah_Gadang.jpg',
    'https://asset.kompas.com/crops/Q76YxfIWfJwq2ALE61Aoh2o2K14=/0x0:1037x691/750x500/data/photo/2021/09/01/612f052b628f4.jpg',
    'https://indonesia.go.id/assets/upload/headline/1563182052_Rumah_Linmas_thumb.jpg',
    'https://cdn1.katadata.co.id/media/images/thumb/2021/09/28/Gambar_rumah_adat_Papua_yang_disebut_rumah_Honai-2021_09_28-16_13_35_0eaebb6468431c3d3f408d9dd32c893f_620x413_thumb.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/b/bc/Rumah_Bolon.jpg',
    'https://blogpictures.99.co/rumah-adat-sasak-lombok.jpg',
    'https://f1-styx.imgix.net/article/2021/06/29115854/rdt3-model-atap-rumah-adat-NTT-Mbaru-Niang.jpg',
  ];

  static List sub = [
    'Rumah Gadang adalah nama untuk rumah tradisional adat Minangkabau',
    'Rumah Joglo adalah rumah adat dari Jawa Tengah yang pada umumnya dibangun dengan menggunakan kayu jati',
    'Rumah Limas adalah rumah tradisional Provinsi Sumatera Selatan',
    'Rumah Honai merupakan salah satu rumah khas Papua, namun tidak dapat ditemukan di seluruh Papua',
    'Rumah Bolon merupakan rumah adat suku Batak, Sumatera Utara',
    'Rumah adat Sasak dibagi menjadi tiga tipe yaitu Bale Bonter, rumah yang dimiliki pejabat desa',
    'Mbaru Niang merupakan rumah adat NTT yang hanya ada di Wae Rebo. Ini merupakan kawasan kampung adat yang berada di pegunungan wilayah Manggarai'
  ];

  final List<DataModel> dataRumah = List.generate(
      namaRumahAdat.length,
      (index) => DataModel('${namaRumahAdat[index]}', '${url[index]}',
          '${description[index]}', '${sub[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rumah Adat',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
        ),
        body: ListView.builder(
            itemCount: dataRumah.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(dataRumah[index].ImageUrl),
                  ),
                  title: Text(dataRumah[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20)),
                  subtitle: Text(dataRumah[index].sub),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => detailData(
                              DataModel: dataRumah[index],
                            )));
                  },
                ),
              );
            }));
  }
}
