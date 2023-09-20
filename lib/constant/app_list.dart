import 'package:flutter_project/constant/app_images.dart';

class Applist {
  static List<Map<String, dynamic>> itemList = [
    {
      "item_name": "Lenovo 15 G2",
      "item_price": 1000,
      "item_description": "11th Gen i5 8GB Ram 1TB HDD",
      "item_image": AppImages.lenovo,
      "item_category": "Laptops"
    },
    {
      "item_name": "Dell 15 5540",
      "item_price": 1200,
      "item_description": "13th Gen i7 8GB Ram 1TB SSD",
      "item_image": AppImages.dell,
      "item_category": "Laptops"
    },
    {
      "item_name": "HP ProBook 450 G9 ",
      "item_price": 1500,
      "item_description": "12th Gen i5 8GB Ram 2TB SSD",
      "item_image": AppImages.hp,
      "item_category": "Laptops"
    },
    {
      "item_name": "SeaGate Hard Drive 1TB",
      "item_price": 50,
      "item_description": "SeaGate Laptop Internal Hard Drive 1TB",
      "item_image": AppImages.seagate,
      "item_category": "Harddrives"
    },
    {
      "item_name": "Toshiba Hard Drive 500gb",
      "item_price": 60,
      "item_description": "Toshiba Laptop Hard Drive 500gb",
      "item_image": AppImages.toshiba,
      "item_category": "Harddrives"
    },
    {
      "item_name": "WD 500GB HARD DRIVE",
      "item_price": 70,
      "item_description": "WD 500GB LAPTOP HARD DRIVE",
      "item_image": AppImages.wd,
      "item_category": "Harddrives"
    },
    {
      "item_name": "HP 16GB DDR4 Memory",
      "item_price": 70,
      "item_description": "DDR4 2666MHz Laptop Memory",
      "item_image": AppImages.hpram,
      "item_category": "Ram"
    },
    {
      "item_name": "Lexar 8GB DDR4 Memory",
      "item_price": 40,
      "item_description": "DDR4 3200MHz Laptop Memory",
      "item_image": AppImages.lexar8,
      "item_category": "Ram"
    },
    {
      "item_name": "Lexar 16GB DDR4 Memory",
      "item_price": 50,
      "item_description": "DDR4 3200MHz Laptop Memory",
      "item_image": AppImages.lexar16,
      "item_category": "Ram"
    },
  ];

  static List<Map<String, dynamic>> cartItem = [];
}
