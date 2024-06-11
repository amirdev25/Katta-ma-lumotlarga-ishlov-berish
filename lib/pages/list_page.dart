import 'package:flutter/material.dart';
import 'package:tatu_project/utils/constants.dart';
import 'package:tatu_project/utils/local_database.dart';

import '../utils/ThemeModel.dart';
import 'detail_page.dart';

class ListPage extends StatelessWidget {
  final String category;

  const ListPage(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    List<ThemeModel> dataList = getDataList(category);

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              dataList[index].themeName,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    themeName: dataList[index].themeName,
                    pdfPath: dataList[index].filePath,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<ThemeModel> getDataList(String category) {
    switch (category) {
      case Constants.lectures:
        return LocalDatabase.getLectures();
      case Constants.practices:
        return LocalDatabase.getPractices();
      case Constants.resources:
        return LocalDatabase.getResources();
      default:
        return []; // Bo'sh ro'yxat qaytariladi, agar kategoriya aniqlanmagan bo'lsa
    }
  }
}
