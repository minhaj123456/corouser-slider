import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';





class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
 final List<String> products = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrBgC1kNC5ydp7ctGOl65GhEY3qSSIiDcL3A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRt6qhF0TgTJR9Plr5c-pisNq7zZ8_4N0j8Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4P2lbHXp_RS3dGSg_qh9ahupWDG5nQQZZsg&usqp=CAU",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("carouseslider"),),
      body: Center(
        child:     Container(
            height: 250,
          
            child: CarouselSlider(
                items: products
                    .map((e) => Container(
                          child: Center(
                            child: Image.network(e),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    autoPlay: true, aspectRatio: 2, enlargeCenterPage: true)),
          ),


      ),
    );
  }
}