import 'package:flutter/material.dart';
import 'package:tatu_project/theme/app_theme.dart';
import '../pages/detail_page.dart';
import '../pages/list_page.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String route;

  const MenuButton(this.title, this.route, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            AppTheme.color1,
            AppTheme.color2,
          ],
          radius: 0.5,
        ),
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        onPressed: () {
          if (route.endsWith('.pdf')) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  themeName: title,
                  pdfPath: route,
                ),
              ),
            );
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListPage(route)));
          }
        },
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
