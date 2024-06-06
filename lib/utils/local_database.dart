import 'package:tatu_project/utils/ThemeModel.dart';

class LocalDatabase {
  static List<ThemeModel> getLectures() {
    List<ThemeModel> lectureList = [
      ThemeModel("1-Mavzu: Katta hajmli ma’lumotlar fanining maqsadi, vazifalari va asosiy tushunchalari", "assets/files/l1.pdf"),
      ThemeModel("2-Mavzu: Qarorni  qo’llab – quvvatlash tizimlari va OLTP, OLAP texnologiyalari", "assets/files/l2.pdf"),
      ThemeModel("3-Mavzu: Ko’p o’lchovli ma’lumotlar modeli va OLAP tizimlari", "assets/files/l3.pdf"),
      ThemeModel("4-Mavzu: Ko’p o’lchovli ma’lumotlar tuzilishi. Mekansal ma’lumotlar", "assets/files/l4.pdf"),
      ThemeModel("5-Mavzu: Ma’lumotlar omborining konseptual modeli", "assets/files/l5.pdf"),
      ThemeModel("6-Mavzu: Ma’lumotlar omborining mantiqiy modeli", "assets/files/l6.pdf"),
      ThemeModel("7-Mavzu: Ma’lumotlar omborining fizik modellari", "assets/files/l7.pdf"),
      ThemeModel("8-Mavzu: Katta hajmdagi ma’lumotlar bilan ishlash texnologiyalari", "assets/files/l8.pdf"),
      ThemeModel("9-Mavzu: Katta hajmdagi ma’lumotlarga bog’liq muammolar va kamchiliklar", "assets/files/l9.pdf"),
      ThemeModel("10-Mavzu: Katta hajmdagi ma’lumotlarda tranzaksiya tushunchasi. Tranzaksiyalarni boshqarish", "assets/files/l10.pdf"),
      ThemeModel("11-Mavzu: Ma’lumotlarni intellectual qidirish (Data Mining)", "assets/files/l11.pdf"),
      ThemeModel("12-Mavzu: Katta hajmdagi ma’lumotlarni sohalarda qo’llanilishi", "assets/files/l12.pdf"),
      ThemeModel("13-Mavzu: Ma’lumotlarni intellectual tahlil qilish", "assets/files/l13.pdf"),
      ThemeModel("14-Mavzu: Qaror daraxtini qurish usullari", "assets/files/l14.pdf"),
      ThemeModel("15-Mavzu: Ma’lumotlarni intellectual qidirishda klasterlash", "assets/files/l15.pdf"),
      ThemeModel("16-Mavzu: Ma’lumotlarni qidirish vazifalari va tasniflash", "assets/files/l16.pdf"),
      ThemeModel("17-Mavzu: Katta hajmdagi ma’lumotlarni yaratish va boshqarish", "assets/files/l17.pdf"),
      ThemeModel("18-Mavzu: Katta hajmdagi ma’lumotlarni qayta ishlash", "assets/files/l18.pdf"),
      ThemeModel("19-Mavzu: Katta hajmdagi ma’lumotlar bazasini boshqarish tizimlari", "assets/files/l19.pdf"),
      ThemeModel("20-Mavzu: Neyron tarmoqlari", "assets/files/l20.pdf"),
      ThemeModel("21-Mavzu: Katta hajmdagi ma’lumotlarda Hadoop arxitekturasi", "assets/files/l21.pdf"),
      ThemeModel("22-Mavzu: Katta hajmdagi ma’lumotlar va ularning xavfsizligi", "assets/files/l22.pdf"),
    ];
    return lectureList;
  }

  static List<ThemeModel> getPractices() {
    List<ThemeModel> practiceList = [
      ThemeModel("1-Amaliy mashg'ulot: Onlayn ma’lumotlar manbaidan ma’lumotlarni tanlash bilan OLAP kubini yaratish", "assets/files/p1.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: Katta hajmli ma’lumotlar omborini yaratishni rejalashtirish", "assets/files/p2.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: Katta hajmli ma’lumotlar tasvirlash modellari", "assets/files/p3.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: Tanlangan predmet soha uchun katta hajmli ma’lumotlar bazasini loyihalash", "assets/files/p4.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: Katta hajmli ma’lumotlar tizimlarining asosiy prinsiplari", "assets/files/p5.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: My SQL Server 2008 yordamida ma’lumotlar bazasini ishlab chiqish va ishlatish", "assets/files/p6.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: Funksional dasturlash va unda amaliy masalalarni hal qilish", "assets/files/p7.pdf"),
      ThemeModel("1-Amaliy mashg'ulot: Katta hajmli ma’lumotlar xavfsizligini ta’minlash usullari", "assets/files/p8.pdf"),
    ];
    return practiceList;
  }
}
