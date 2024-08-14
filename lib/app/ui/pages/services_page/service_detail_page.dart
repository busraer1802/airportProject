import 'package:flutter/material.dart';

class ServiceDetailPage extends StatelessWidget {
  final String detailText;
  final String header1Text;
  final String detailTitle;
  final String additionalDetailText;
  final String header2Text;
  final String detailText2;
  final String additionalDetailText2;
  final String header3Text;
  final String detailText3;
  final String additionalDetailText3;
  final String header4Text;
  final String detailText4;
  final String additionalDetailText4;
  final String genelText;
  final List<String> imageUrls; 

  const ServiceDetailPage({
    Key? key,
    required this.detailText,
    required this.header1Text,
    required this.detailTitle,
    required this.additionalDetailText,
    required this.header2Text,
    required this.detailText2,
    required this.additionalDetailText2,
    required this.header3Text,
    required this.detailText3,
    required this.additionalDetailText3,
    required this.header4Text,
    required this.detailText4,
    required this.additionalDetailText4,
    required this.genelText,
    required this.imageUrls, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          detailTitle,
          style: TextStyle(fontFamily: "Medium", fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(
                  genelText,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  header1Text,
                  style: TextStyle(fontFamily: "Medium", fontSize: 30),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  detailText,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  additionalDetailText,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 350, 
                    width: 350,  
                    child: Image.network(imageUrls[0]),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  header2Text,
                  style: TextStyle(fontFamily: "Medium", fontSize: 30),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  detailText2,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  additionalDetailText2,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 350, 
                    width: 350, 
                    child: Image.network(imageUrls[1]),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  header3Text,
                  style: TextStyle(fontFamily: "Medium", fontSize: 30),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  detailText3,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  additionalDetailText3,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 350, 
                    width: 350, 
                    child: Image.network(imageUrls[2]),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  header4Text,
                  style: TextStyle(fontFamily: "Medium", fontSize: 30),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                Text(
                  detailText4,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  additionalDetailText4,
                  style: TextStyle(fontFamily: "Medium", fontSize: 16),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 350, 
                    width: 350,  
                    child: Image.network(imageUrls[3]),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
     ),
);
}
}