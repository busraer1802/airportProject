import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:airport_project/app/controllers/flight_controller.dart';
import 'package:airport_project/app/ui/pages/airportshoppingstores_page/airportshoppingstores_page.dart';
import 'package:airport_project/app/ui/pages/asistant_page/asistant_page.dart';
import 'package:airport_project/app/ui/pages/mytickets_page/mytickets_page.dart';
import 'package:airport_project/app/ui/pages/profile_page/profile_page.dart';
import 'package:airport_project/core/base/base_state.dart';
import 'package:airport_project/core/init/theme/color_manager.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../controllers/home_controller.dart';
import '../services_page/services_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  Future<Map<String, dynamic>> fetchWeather() async {
    String apiKey = "7bc536a1d4c349d195021617240506";
    String city = "Ankara";
    String url =
        'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city&aqi=no';

    HttpClient httpClient = HttpClient();
    try {
      final request = await httpClient.getUrl(Uri.parse(url));
      final response = await request.close();

      if (response.statusCode == 200) {
        final jsonResponse = await response.transform(utf8.decoder).join();
        final data = json.decode(jsonResponse);
        return data;
      } else {
        throw Exception('Failed to load weather data');
      }
    } finally {
      httpClient.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Reklam resimlerinin URL'lerini içeren liste
    final List<String> adImages = [
      "https://www.akayoptic.com.tr/App_themes/Image/marketing/10.jpg",
      "https://i.haber3.com/2/1280/720/storage/files/images/2022/06/09/screenshot-2-9xPH_cover.jpg",
      "https://i0.wp.com/haber.im/wp-content/uploads/2023/09/Pegasustan-Yeni-Reklam-Filmi-Her-Adim-Gelecege-100umuz-Cumhuriyete%E2%80%A6-%E2%80%94.jpg?fit=770%2C375&ssl=1",
      "https://cdnuploads.aa.com.tr/uploads/VideoGallery/2019/03/19/7a149ec0a4273c5f651583a83f4022f8.jpg",
      "https://yenisiirt.com/wp-content/uploads/2022/07/sephora-indirim-turkey.jpg",
      "https://thebrandage.com/wp-content/uploads/2015/11/1448099892_Pegasus_Yaz_Kampanyas__.jpg",
      "https://www.airportvipshuttle.com/upload/ankara-esenboga-havalimani-otel-transfer-.jpg",
      "https://cdn.wishcarrental.com/Assets/images/istasyon/52e91bba-00e6-4c07-9499-f25030576f81.webp",
      "https://paraflystatic.mncdn.com/7/00/03/31/32/esenboga-havalimani-otopark-detay-1539336853.png",
    ];

    return GetBuilder<FlightController>(
      init: FlightController(),
      builder: (fl) {
        return GetBuilder<HomeController>(
          init: HomeController(),
          builder: (c) {
            return Scaffold(
              backgroundColor: ColorManager.instance.white,
              appBar: AppBar(
                backgroundColor: ColorManager.instance.yellow,
                elevation: 0,
                title: Padding(
                  padding: EdgeInsets.only(left: Utility.dynamicWidthPixel(8)),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/logocut.png',
                        width: Utility.dynamicWidthPixel(40),
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: Utility.dynamicWidthPixel(8)),
                      Text(
                        "Skybee",
                        style: TextStyle(
                          fontFamily: "Bold",
                          fontSize: Utility.dynamicTextSize(20),
                          color: ColorManager.instance.black,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  InkWell(
                    onTap: () {
                      pushNewScreen(context,
                          screen: const ProfilePage(), withNavBar: true);
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: Utility.dynamicWidthPixel(12)),
                      child: Icon(
                        Icons.account_circle,
                        color: ColorManager.instance.black,
                        size: Utility.dynamicWidthPixel(45),
                      ),
                    ),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: Utility.dynamicHeightPixel(
                            8)), // Beyazlık eklemek için
                    FutureBuilder<Map<String, dynamic>>(
                      future: fetchWeather(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text("Error: ${snapshot.error}"));
                        } else if (!snapshot.hasData || snapshot.data == null) {
                          return const Center(child: Text("No data available"));
                        } else {
                          final weatherData = snapshot.data!;
                          final weatherDescription =
                              weatherData['current']['condition']['text'];
                          final temperature = weatherData['current']['temp_c'];
                          return Stack(
                            children: [
                              Opacity(
                                opacity:
                                    0.5, // Arka planın opaklığını azaltmak için
                                child: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/background.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: Utility.dynamicWidthPixel(
                                      100), // Yüksekliği istediğiniz gibi ayarlayabilirsiniz
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(
                                    Utility.dynamicWidthPixel(16)),
                                margin: EdgeInsets.only(
                                    top: Utility.dynamicWidthPixel(16)),
                                child: Column(
                                  children: [
                                    Text(
                                      "Ankara Hava Durumu",
                                      style: TextStyle(
                                        fontFamily: "Bold",
                                        fontSize: Utility.dynamicTextSize(18),
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "$weatherDescription, $temperature°C",
                                      style: TextStyle(
                                        fontFamily: "Medium",
                                        fontSize: Utility.dynamicTextSize(16),
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                    SizedBox(
                        height: Utility.dynamicHeightPixel(
                            24)), // Daha fazla boşluk eklemek için
                    SizedBox(
                      height: Utility.dynamicWidthPixel(110),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          buildMenuCard(context, "Hizmetler",
                              'assets/images/hzmt.png', const ServicesPage()),
                          SizedBox(width: Utility.dynamicWidthPixel(8)),
                          buildMenuCard(
                              context,
                              "Alışveriş",
                              'assets/images/shop.png',
                              const AirportShoppingStoresPage()),
                          SizedBox(width: Utility.dynamicWidthPixel(8)),
                          buildMenuCard(context, "Asistan",
                              'assets/images/sanal.png', const AsistantPage()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Utility.dynamicWidthPixel(24),
                          horizontal: Utility.dynamicWidthPixel(16)),
                      child: InkWell(
                        onTap: () {
                          pushNewScreen(context,
                              screen: const MyTicketsPage(), withNavBar: true);
                        },
                        child: Container(
                          width: double.infinity,
                          height: Utility.dynamicWidthPixel(70),
                          padding:
                              EdgeInsets.all(Utility.dynamicWidthPixel(16)),
                          decoration: BoxDecoration(
                            color: ColorManager.instance.yellow,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                            image: DecorationImage(
                              image:
                                  const AssetImage('assets/images/bilet4.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "BİLETLERİM",
                                  style: TextStyle(
                                      fontFamily: "Medium",
                                      fontSize: Utility.dynamicTextSize(17)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: Utility.dynamicWidthPixel(8)),
                                  child: const Icon(Icons.airplane_ticket),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Utility.dynamicWidthPixel(30),
                        horizontal: Utility.dynamicWidthPixel(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.all(Utility.dynamicWidthPixel(16)),
                            width: Get.width,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorManager.instance.greyBG),
                              color: ColorManager.instance.greyBG,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Skybee kullanıcıları için özel indirimler! Havalimanı mağazalarında avantajlı alışveriş fırsatlarını kaçırmayın",
                                style: TextStyle(
                                  fontFamily: "Medium",
                                  fontSize: Utility.dynamicTextSize(14),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(height: Utility.dynamicHeightPixel(20)),
                          CarouselSlider(
                            options: CarouselOptions(
                              height: Utility.dynamicWidthPixel(220),
                              viewportFraction:
                                  1.0, // Tam genişlikte görünmesi için
                              autoPlay:
                                  true, // Otomatik geçiş yapmasını istiyorsanız
                            ),
                            items: adImages.map((imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: ColorManager.instance.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: CachedNetworkImage(
                                        imageUrl: imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget buildMenuCard(BuildContext context, String title,
      String backgroundImage, Widget targetPage) {
    return InkWell(
      onTap: () {
        pushNewScreen(context, screen: targetPage, withNavBar: true);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Container(
                width: Utility.dynamicWidthPixel(130), // Genişlik ayarlaması
                height: Utility.dynamicWidthPixel(110), // Yükseklik ayarlaması
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Container(
              width: Utility.dynamicWidthPixel(130),
              height: Utility.dynamicWidthPixel(110),
              padding: EdgeInsets.all(Utility.dynamicWidthPixel(16)),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: "Medium",
                    fontSize: Utility.dynamicTextSize(19),
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
     ),
);
}
}