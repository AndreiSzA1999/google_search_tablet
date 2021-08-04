import 'package:flutter/material.dart';
import 'package:google_search_tablet/widgets/barrabusqueda.dart';

class ThirdPage extends StatelessWidget {
  final String url;

  ThirdPage(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        BarraBusqueda(
            url:
                "https://flutter.dev/docs/cookbook/navigation/navigation-basics",
            numeroPestanas: "3"),
        Expanded(
          child: Image.asset(
            "$url",
            fit: BoxFit.contain,
          ),
        )
      ],
    ));
  }
}
