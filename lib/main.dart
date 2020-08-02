import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resep_app/DetailResep.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ResepApp()));

class ResepApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Resep Makanan Indonesia',
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: _ListPage(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'Serif');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 25.0, fontWeight: FontWeight.bold);
final descTextStyle = baseTextStyle.copyWith(fontSize: 15.0);

class _ListPage extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_ListPage> {
  List<String> Title = ["Nasi Goreng",
  "Soto Lamongan",
  "Soto Babat",
  "Pecel Lele",
  "Bakso",
  "Mie Ayam",
  "Rendang",
  "Sate",
  "Klepon",
  "Mie Aceh"];

  List<String> subTitle = ["Makanan enak yg disantap saat malam atau pagi hari",
  "Makanan Berkuah yg enak disantap saat cuaca dingin",
  "Makanan Berkuah yg enak disantap saat cuaca dingin",
  "Makanan yg enak disantap menggunakan sambal",
  "Makanan Berkuah yg enak disantap saat cuaca dingin",
  "Makanan Berkuah yg enak disantap saat cuaca dingin",
  "Makanan Khas Sumatra yg enak hingga masuk dalam makanan terenak di dunia",
  "Makanan Khas Madura yg enak disantap ketika baru matang",
  "Makanan dengan isian gula aren yg sangat enak dan ditaburi parutan kelapa",
  "Makanan Berkuah yg enak disantap saat cuaca dingin"];

  List<String> Bahan = ["Nasi + Telur + Kecap Manis + Cabai & Bawang + Dll ",
  "Mie Bihun + Telur + Potongan Ayam + Dll",
  "Daging/Babat + Santan + Bumbu ( Rempah - Rempah ) + Dll",
  "Nasi + Lele + Tepung + Bawang Goreng + Dll",
  "Daging Sapi + Mie Bihun / Mie + Dll",
  "Mie Khas + Daging Ayam + Dll",
  "Daging Sapi + Kentang + Dll",
  "Daging Ayam / Daging Kambing + Kecap Manis + Bawang Goreng + Dll",
  "Tepung Ketan + Tepung Beras Putih + Pewarna Makanan + Gula Aren / Gula Merah+ Dll",
  "Mie Basah + Daging Ayam + Dll"];

  List<String> caraMembuat = ["Masukan nasi dan telur, lalu campurkan dengan kecap dan bumbu penyedap jika sudah tunggu hingga masakan terlihat matang.",
  "Rebus mie dan telur hingga matang, lalu potong tomat dan potong daging ayam hingga kecil - kecil. jika sudah tinggal masukan semua masakan yg sudah jadi ke dalam mangkuk",
  "Cuci babat hingga bersih, lalu rebus babat. sambil menunggu babat direbus uleg semua bahan2 seperti cabai dll. lalu masukan semua bumbu dan jadi soto babat siap disantap",
  "Goreng lele yg sudah dicampurkan dengan tepung, jika sudah masukan nasi kedalam piring dan jangan lupa taburi dengan bawang goreng. nah jika lele sudah matang masukan lele kedalam piring dan pecel lele siap disanta",
  "Haluskan semua bumbu, jika sudah giling daging supaya halus. jika sudah bentuk daging menggunakan sendok. lalu rebus bakso yg sudah dibentuk, lalu siapkan mangkuk dan tuangkan bakso yg sudah direbus kedalam mangkuk dan bakso siap disantap",
  "Rebus Mie dan siapkan mangkuk, jika sudah tuangkan potongan2 daging ayam yg sudah matang kedalam mangkuk. jika mie sudah matang tuangkan kedalam mangkuk dan mie ayam siap dimakan",
  "Potong daging sesuai selera, jika sudah rebus daging hingga mendidih. lalu tambahkan penyedap rendang masak hingga kental dan rendang siap dimakan",
  "Potong daging ayam/kambing, masukan potongan2 tersebut kedalam tusukan sate. jika sudah panggang daging hingga matang dan jangan lupa untuk membumbui daging dengan kecap dan bumbu lain untuk menambah rasa. dan sate siap dihidangkan",
  "Campurkan tepung dengan air secukupnya, tuangkan pewarna makanan berwarna hijau. Pipihkan adonan dan masukan gula aren atau gula merah yg sudah cair lalu bentuk adonan menjadi bulat. jika sudah rebus air hingga mendidih masukan adonan tunggu hingga matang angkat adonan dan masukan kedalam parutan kelapa. klepon siap disantap",
  "Haluskan semua bumbu, masukan minyak dan bumbu yg sudah halus kedalam wajan. kocok telur lalu masukan kedalam wajan, setelah matang masukan mie dan bahan2 lainnya tunggu mie hingga matang. mie aceh siap disantap "];

  List<String> Gambar = ["assets/images/nasigoreng.jpg",
  "assets/images/sotolamongan.jpg",
  "assets/images/sotobabat.jpg",
  "assets/images/pecellele.jpg",
  "assets/images/bakso.jpg",
  "assets/images/mieayam.jpg",
  "assets/images/rendang.jpg",
  "assets/images/sate.jpg",
  "assets/images/klepon.jpg",
  "assets/images/mieaceh.jpg",];

  build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: Title.length,
          itemBuilder: (BuildContext context, int index) {
            final nama = Title[index].toString();
            final deskripsi = subTitle[index].toString();
            final peralatan = Bahan[index].toString();
            final membuat = caraMembuat[index].toString();
            final foto = Gambar[index].toString();
            return Container(
              height: 200.0,
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(foto),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: topContent(nama, deskripsi),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailResep(
                                itemJudul: nama,
                                itemSub: deskripsi,
                                itemGambar: foto,
                                itemBahan: peralatan,
                                itemCara: membuat,
                              )));
                },
              ),
            );
          }),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar)),
      ),
    );
  }

  topContent(String nama, String deskripsi) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 200.0,
            color: Colors.lightBlue,
            padding: EdgeInsets.symmetric(horizontal: 90.0),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            deskripsi,
            style: descTextStyle,
          ),
        ],
      ),
    );
  }
}
