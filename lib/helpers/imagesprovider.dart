import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image/helpers/images.dart';

class ImagesProvider with ChangeNotifier {
  List<Images> _items = [];

  List<Images> get items {
    return [..._items];
  }

  Future<void> getImages() async {
    final response =
        await http.get("https://picsum.photos/v2/list?page=2&limit=10");
    List list = json.decode(response.body);
    try {
      if (response.statusCode == 200) {
        for (var i = 0; i < list.length; i++) {
          _items.add(Images(imageUrl: list[i]["download_url"]));
          print(list[i]["url"]);
        }
      } else {
        throw Exception("Failed to Load!");
      }
    } catch (error) {
      print(error);
    }
  }
}
