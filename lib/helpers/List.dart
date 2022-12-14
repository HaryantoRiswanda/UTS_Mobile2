import 'package:flutter/material.dart';
import 'package:tugasflutter_haryanto/detailList.dart';
import '../../helpers/size_helper.dart';

class ListProdi extends StatelessWidget {
  final List Prodi = [
    "Informatika",
    "Teknik Industri",
    "Desain Komunikasi Visual",
    "Digital Bisnis",
  ];

  final List images = [
    "assets/images/informatika.jpg",
    "assets/images/industri.jpeg",
    "assets/images/DKV.jpg",
    "assets/images/BD.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: Prodi.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailWisataScreen()),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10), //You can use EdgeInsets like above
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("${images[index]}"), fit: BoxFit.cover),
                ),
                child: Text(
                  "${Prodi[index]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      // color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
