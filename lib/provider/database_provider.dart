import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:jezioto/model/tourist_attraction.dart';

class DatabaseProvider extends ChangeNotifier{

  Box<TouristAttraction>? touristAttractionBox;

  openBox()async{
    touristAttractionBox = await Hive.openBox<TouristAttraction>("Favorite");
    notifyListeners();
  }
  setFavorite(TouristAttraction touristAttraction){
    touristAttractionBox?.put(touristAttraction.title, touristAttraction);
  }

  removeFavorite(TouristAttraction touristAttraction){
    touristAttractionBox?.delete(touristAttraction.title);
  }
  closeBox(){
    Hive.close();
  }

}