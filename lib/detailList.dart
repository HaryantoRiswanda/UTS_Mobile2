import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:tugasflutter_haryanto/helpers/size_helper.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailWisataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Prodi"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/sttb.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  "Teknik Informatika",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10), //You can use EdgeInsets like above
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/informatika.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: displayWidth(context) * 0.95,
                      height: 360,
                      padding: EdgeInsets.all(
                          10), //You can use EdgeInsets like above
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blueGrey,
                              Colors.blueAccent,
                              Colors.blue.shade800
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Teknik Informatika Sekolah Tinggi Teknologi Bandung menghadirkan generasi yang melek terhadap teknologi dan berani berinovasi kreatif sehingga lahirlah generasi yang “Mampu Menganalisa, Merancang, dan Membangun App & Perangkat Komputer, paham terhadap Information Tech Development, Comp and Network Security, Robotics and Embedded System. Teknik Informatika merupakan bidang ilmu yang mempelajari bagaimana menggunakan teknologi komputer secara optimal guna menangani masalah transformasi atau pengolahan data dengan proses logika. Di Jurusan Teknik Informatika kamu akan mempelajari berbagai prinsip terkait ilmu komputer mulai dari proses perancangan, pengembangan, pengujian, hingga evaluasi sistem operasi perangkat lunak. Selama kuliah kamu akan banyak mengkaji pemrograman dan komputasi, dan dibekali pula dengan keterampilan merancang perangkat lunak.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DancingScript',
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
