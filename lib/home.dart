import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tugasflutter_haryanto/helpers/size_helper.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  final List<String> imageList = [
    "assets/images/sttb (1).jpeg",
    "assets/images/sttb (2).jpeg",
    "assets/images/sttb (3).jpeg",
    "assets/images/sttb (4).jpeg",
    "assets/images/sttb (5).jpeg",
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool _enabled = true;

  void initState() {
    // startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    // height: 300,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    // enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imageList
                      .map(
                        (item) => Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Center(
                    child: Text(
                      "UKM",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.white, Colors.blue],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        width: displayWidth(context) * 0.3,
                        margin: EdgeInsets.all(5),
                        child: FlutterLogo(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Text(
                      "Program Studi",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 180,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://kampusaja.com/wp-content/uploads/2016/01/teknik-informatika_v2.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Teknik Informatika",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 180,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              "http://dkijakarta.co/wp-content/uploads/2020/03/1495031323-maxresdefa.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Desaon Komunikasi Visual",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 180,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.republika.co.id/uploads/images/inpicture_slide/ubsi-membuka-penerimaan-mahasiswa-baru-pmb-gelombang-2-dimulai_210401150950-722.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Teknik Industri",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 180,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade600,
                          Colors.black26,
                          Colors.blue.shade800
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              "http://cyberlink.co.id/wp-content/uploads/2021/11/26112021-Persiapan-memulai-bisnis-digital.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    width: displayWidth(context) * 0.3,
                    child: Text(
                      "Bisnis Digital",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
