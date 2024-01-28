import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class VocabularyDashboard extends StatelessWidget {
  Items item1 = Items(
      title: "Comida",
      img: "assets/burger.png");

  Items item2 = Items(
    title: "Animales",

    img: "assets/pet.png",
  );
  
  Items item4 = Items(
    title: "Higiene",

    img: "assets/hygiene-routine.png",
  );
  Items item5 = Items(
    title: "Deportes",

    img: "assets/training.png",
  );
  
  Items item6 = Items(
    title: "Reglas",

    img: "assets/rule.png",
  );

  Items item7 = Items(
    title: "Escuela",

    img: "assets/stationery.png",
  );

  Items item8 = Items(
    title: "Arte",

    img: "assets/art.png",
  );

  Items item9 = Items(
    title: "Naturaleza",

    img: "assets/forest.png",
  );

  VocabularyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2,  item4, item5, item6, item7, item8, item9];
  
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: const EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  
                  const SizedBox(
                    height: 14,
                  ),
                  
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;

  String img;
  Items({required this.title, required this.img});
}