import 'dart:convert';
import 'dart:developer';

import 'package:fake_store_api/model/store_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreenController with ChangeNotifier {
  List<FakeStoreModel> modelListstore = [];

  Future getProductDeatils() async {
    Uri url = Uri.parse("https://fakestoreapi.com/products");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> decodedData = jsonDecode(response.body);
      log(decodedData.runtimeType.toString());
      modelListstore =
          decodedData.map((e) => FakeStoreModel.fromJson(e)).toList();
// decodedData
      // FakeStoreModel? resModel = FakeStoreModel.fromJson(decodedData);

      notifyListeners();
    }
  }
}
