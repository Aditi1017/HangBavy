import 'package:flutter/material.dart';
import 'package:wallpaperapp/models/wallpaper_model.dart';
import 'package:wallpaperapp/views/image_view.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "HANG",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
      ),
      Text(
        " Bavy",
        style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w500),
      ),
    ],
  );
}

Widget wallpapersList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpapers) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ImageView(
                imgURL: wallpapers.src.portrait,
              ),
            ));
          },
          child: GridTile(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  wallpapers.src.portrait,
                  fit: BoxFit.cover,
                ),
              ),
              //color: Colors.blue, use fit property
            ),
          ),
        );
      }).toList(),
    ),
  );
}
