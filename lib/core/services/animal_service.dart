import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:ttaranimal/core/models/animal.dart';
import 'package:ttaranimal/core/utilities/constant.dart';

class AnimalService {
  String baseUrl;
  static AnimalService animalService = AnimalService._privateConstructor();

  AnimalService._privateConstructor() {
    baseUrl = Constans.ANIMALAPIURL;
  }

  static AnimalService getAnimalInstance() {
    if (animalService == null)
      animalService = AnimalService._privateConstructor();

    return animalService;
  }

  Future<List<Animal>> getAnimals() async {
    final response = await http.get("$baseUrl/animals.json");
    List<Animal> animalList = List<Animal>();
    var data;

    switch (response.statusCode) {
      case HttpStatus.ok:
        {
          data = jsonDecode(response.body);
          data.forEach((key, value) {
            var animal = Animal.fromJson(value);
            animal.key = key;
            animalList.add(animal);
          });
          return animalList;
        }
    }

    return Future.error(response);
  }
}
