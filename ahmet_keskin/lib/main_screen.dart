import 'package:flutter/material.dart';
import 'package:ahmet_keskin/utils/customColors.dart';
import 'package:ahmet_keskin/utils/customTextStyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String logoImage = "assets/images/img_isü.png";
  @override
  Widget build(BuildContext context) {
    //responsive tasarım için gerekli olan ve cihazın boyunu çektiğimiz MediaQuery widget'i
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double _width = width * 0.3;

    if (width > 1000) {
      return Scaffold(
        appBar: _appBar(width, height),
        body: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sideNavigation(width, height),
              Column(
                children: [
                  _customSizedBox(height * 0.05),
                  Center(
                    child: Column(
                      children: [
                        titleContainer(height, width * 0.6, "Canli Dersler"),
                        bodyContainer(height, width * 0.6),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            _customSizedBox(height * 0.05),
                            titleContainer(height, _width,
                                "Dersler Muafiyet Sinavlari Başvuru"),
                            makeupContainer(height, _width, _width),
                            _customSizedBox(height * 0.05),
                            titleContainer(height, _width, "Dersler"),
                            danismanContainer(height, _width),
                            greybodyContainer(height, _width),
                            courseContainer(height, _width, Icons.folder,
                                "BIL203 Nesneye Yönelik\nProgramlama Temelleri"),
                            courseContainer(height, _width, Icons.folder,
                                "DIL511 Mesleki İngilizce 1"),
                            _customSizedBox(height * 0.0005)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: _width * 0.5,
                      ),
                      Column(
                        children: [
                          _customSizedBox(height * 0.05),
                          titleContainer(
                              height, _width, "ÇAP - Yandal Başvuru"),
                          bodyContainer(height, _width),
                          _customSizedBox(height * 0.05),
                          titleContainer(height, _width, "Duyurular"),
                          bodyContainer(height, _width),
                          _customSizedBox(height * 0.05),
                          titleContainer(height, _width, "Mesaj Kutusu"),
                          mailContainer(height, _width, Icons.arrow_downward,
                              Colors.green, "Gelen Kutusu"),
                          mailContainer(height, _width, Icons.arrow_upward,
                              Colors.white, "Giden Kutusu"),
                          mailContainer(
                              height,
                              _width,
                              Icons.maps_home_work_outlined,
                              Colors.white,
                              "Mesaj Yaz"),
                          _customSizedBox(height * 0.05),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: _appBar(width, height),
        body: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sideNavigation(width, height),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        _customSizedBox(height * 0.05),
                        titleContainer(height, _width * 1.7, "Duyurular"),
                        bodyContainer(height, _width * 1.7),
                        _customSizedBox(height * 0.05),
                        titleContainer(height, width * 0.7, "Canli Dersler"),
                        bodyContainer(height, width * 0.7),
                        _customSizedBox(height * 0.05),
                        titleContainer(height, _width * 1.7,
                            "Dersler Muafiyet Sinavlari Başvuru"),
                        makeupContainer(height, _width * 1.7, width),
                        _customSizedBox(height * 0.05),
                        titleContainer(
                            height, _width * 1.7, "ÇAP - Yandal Başvuru"),
                        bodyContainer(height, _width * 1.7),
                        _customSizedBox(height * 0.05),
                        titleContainer(height, _width * 1.7, "Mesaj Kutusu"),
                        mailContainer(height, _width * 1.7,
                            Icons.arrow_downward, Colors.green, "Gelen Kutusu"),
                        mailContainer(height, _width * 1.7, Icons.arrow_upward,
                            Colors.white, "Giden Kutusu"),
                        mailContainer(
                            height,
                            _width * 1.7,
                            Icons.maps_home_work_outlined,
                            Colors.white,
                            "Mesaj Yaz"),
                        _customSizedBox(height * 0.05),
                        titleContainer(height, _width * 1.7, "Dersler"),
                        danismanContainer(height, _width * 1.7),
                        greybodyContainer(height, _width * 1.7),
                        courseContainer(height, _width * 1.7, Icons.folder,
                            "BIL203 Nesneye Yönelik\nProgramlama Temelleri"),
                        courseContainer(height, _width * 1.7, Icons.folder,
                            "DIL511 Mesleki İngilizce 1"),
                        _customSizedBox(height * 0.0005),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

//appbar
  AppBar _appBar(double width, double height) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.all(width * 0.12),
        child: Image.asset(
          logoImage,
          height: height * 0.1,
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Icon(Icons.person),
        ),
      ],
    );
  }

//side Navigation
  Container sideNavigation(double width, double height) {
    return Container(
      width: width * 0.2,
      height: height * 2,
      color: CustomColors.appbarBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: CustomColors.bookIconColor,
                    borderRadius: BorderRadius.circular(10)),
                height: height * 0.1,
                width: width * 0.2,
                child: Icon(
                  Icons.book,
                  size: height * 0.04,
                  color: Colors.white,
                )),
            _customSizedBox(height * 0.02),
            Container(
                decoration: BoxDecoration(
                    color: CustomColors.documentIconColor,
                    borderRadius: BorderRadius.circular(10)),
                height: height * 0.1,
                width: width * 0.2,
                child: Icon(
                  Icons.document_scanner,
                  size: height * 0.04,
                  color: Colors.white,
                )),
            _customSizedBox(height * 0.02),
            Container(
                decoration: BoxDecoration(
                    color: CustomColors.squareIconColor,
                    borderRadius: BorderRadius.circular(10)),
                height: height * 0.1,
                width: width * 0.2,
                child: Icon(
                  Icons.square,
                  size: height * 0.04,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }

  //Telafi sınavı Container
  Container makeupContainer(double height, double _width, double width) {
    return Container(
      height: height * 0.09,
      width: _width,
      color: Colors.white,
      alignment: Alignment.center,
      child: Container(
        height: height * 0.06,
        width: _width * 0.8,
        decoration: BoxDecoration(
            color: CustomColors.appbarBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ders Adı",
                style: TextStyle(
                    fontSize: width * 0.03,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Kredi",
                style: TextStyle(
                    fontSize: width * 0.03,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

//Danışman container
  Container danismanContainer(double height, double width) {
    return Container(
        height: height * 0.13,
        width: width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(width * 0.02),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text("Danışman: EZGİ ÖZER",
                      style: TextStyle(
                          fontSize: width * 0.035,
                          color: CustomColors.courseTextStyleColor))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mail, color: Colors.grey),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    "ezgi.ozer@istinye.edu.tr",
                    style: TextStyle(
                        fontSize: width * 0.035,
                        color: CustomColors.courseTextStyleColor),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Container greybodyContainer(double height, double width) {
    return Container(
        height: height * 0.08,
        width: width,
        color: CustomColors.greyContainerColor,
        child: Padding(
          padding: EdgeInsets.all(width * 0.02),
          child: Text(
            "Fall Dönemi Dersleri",
            style: TextStyle(
              fontSize: width * 0.035,
              color: CustomColors.courseTextStyleColor,
            ),
          ),
        ));
  }

  Container bodyContainer(double height, double width) {
    return Container(
      height: height * 0.08,
      width: width,
      color: Colors.white,
    );
  }

  Container courseContainer(
      double height, double width, IconData icon, String text) {
    return Container(
      height: height * 0.08,
      width: width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: width * 0.01,
            ),
            Text(text,
                style: TextStyle(
                  fontSize: width * 0.035,
                  color: CustomColors.containerTextColor,
                )),
          ],
        ),
      ),
    );
  }

  Container mailContainer(double height, double width, IconData icon,
      Color containerColor, String text) {
    return Container(
      height: height * 0.08,
      width: width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(width * 0.02),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: width * 0.01,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: width * 0.035,
                color: CustomColors.containerTextColor,
              ),
            ),
            SizedBox(
              width: width * 0.01,
            ),
            Container(
                color: containerColor,
                child: Text(
                  "48",
                  style:
                      TextStyle(fontSize: width * 0.035, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  Container titleContainer(double height, double width, String title) {
    return Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: width * 0.05,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        height: height * 0.1,
        width: width,
        decoration: BoxDecoration(
            color: CustomColors.appbarBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))));
  }

  Widget _customSizedBox(double sizedBoxHeight) => SizedBox(
        height: sizedBoxHeight,
      );
}
