import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jezioto/model/tourist_attraction.dart';
import 'package:jezioto/provider/database_provider.dart';
import 'package:jezioto/ui/widget/container_tourist_attraction.dart';
import 'package:provider/provider.dart';

class MainMenuFavoritePage extends StatefulWidget {
  const MainMenuFavoritePage({Key? key}) : super(key: key);

  @override
  State<MainMenuFavoritePage> createState() => _MainMenuFavoritePageState();
}

class _MainMenuFavoritePageState extends State<MainMenuFavoritePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies()async{
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<DatabaseProvider>(context,listen: false).openBox();
    return Scaffold(
      body: SafeArea(
        child: Consumer<DatabaseProvider>(
          builder: (context,value,_) {
            return Column(
              children: [
                if(value.touristAttractionBox==null)
                  CircularProgressIndicator(),
                if(value.touristAttractionBox!=null)
                _buildListViewWatcher(),
              ],
            );
          }
        ),
      ),
    );
  }
}


Widget _buildListViewWatcher() {
  return Consumer<DatabaseProvider>(
    builder: (context,value,_) {
      return ValueListenableBuilder<Box<TouristAttraction>>(
        valueListenable: value.touristAttractionBox!.listenable(),
        builder: (context, Box<TouristAttraction> box, widget) {
          return buildFavoriteList(box);
        },
      );
    }
  );
}


Widget buildFavoriteList(Box<TouristAttraction> box) {
  return ListView.builder(
    // controller:  _scrollController,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: box.length,
    // physics: AlwaysScrollableScrollPhysics(),
    itemBuilder: (_, index) {
      final favorite = box.getAt(index);
      return InkWell(
        onTap: (){},
        child:ContainerTouristAttraction(touristAttraction: favorite!),
      );
    },
  );
}
