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
    List<ThemeModel> dataList = category == Constants.lectures
        ? LocalDatabase.getLectures()
        : LocalDatabase.getPractices();

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
}
