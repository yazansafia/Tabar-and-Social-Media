import 'package:flutter/material.dart';
import 'package:poject4/tabs/Phons.dart';
import 'package:poject4/tabs/Socualmedia.dart';

import 'tabs/Laptops.dart';

class Pages1 extends StatefulWidget {
  Pages1({Key? key}) : super(key: key);

  @override
  State<Pages1> createState() => _Pages1State();
}

class _Pages1State extends State<Pages1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          bottom: TabBar(tabs: [
            Icon(Icons.laptop),
            Icon(Icons.laptop),
            Icon(Icons.laptop),
          ]),
        ),
        body: Container(
          child: TabBarView(children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "Leatest Laptop",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FirstTab(
                    image:
                        "https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/dell-client-products/notebooks/latitude-notebooks/14-3420/media-gallery/peripherals_laptop_latitude_3420nt_gallery_1.psd?fmt=png-alpha&pscan=auto&scl=1&hei=402&wid=555&qlt=100,0&resMode=sharp2&size=555,402",
                    title: "dell",
                    subtitle: "core i 10",
                  ),
                  FirstTab(
                    image:
                        "https://vid.alarabiya.net/images/2020/08/12/d5c3737a-b305-4c1a-801d-141a89dfc79d/d5c3737a-b305-4c1a-801d-141a89dfc79d_16x9_1200x676.jpg",
                    title: "toshepa ",
                    subtitle: "core i 8",
                  ),
                  FirstTab(
                    image:
                        "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06596684.png",
                    title: "HP",
                    subtitle: "core 11",
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Phons1(
                      image:
                          "https://cdn.dxomark.com/wp-content/uploads/medias/post-106688/Samsung-Galaxy-S22-Ultra-featured-image-packshot-review-Recovered-1024x691.jpg",
                      subtitle: "  white and black ",
                      title: "S22 ultra"),
                  Phons1(
                      image:
                          "https://cdn-ray.zain.sa/wp-content/uploads/2022/03/iPhone_13_pro_Green_alpine-1-350x434.png",
                      subtitle: "I phone 13 ",
                      title: "Black and Pink "),
                  Phons1(
                      image:
                          "https://mobelat.com/wp-content/uploads/2020/04/huawei-p40-pro-shot2-mobiylat.jpg",
                      subtitle: "Huwawi p40 pro",
                      title: "gray and white")
                ],
              ),
            ),
            Column(
              children: [
                Social(
                  subtitle: ("Join to faceook"),
                  title: ("Facebook"),
                  MyFacebookFunction: Facebook,
                ),
                Social(
                  subtitle: ("Join to Linked In"),
                  title: ("Linked In"),
                  MyFacebookFunction: Linked,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
