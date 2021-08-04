import 'package:flutter/material.dart';
import 'package:google_search_tablet/screens/second_screen.dart';
import 'package:google_search_tablet/widgets/barrabusqueda.dart';

class FistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            BarraBusqueda(
              numeroPestanas: "3",
              url:
                  "https://stackoverflow.com/questions/54181838/flutter-required-keyword",
            ),
            Container(
              height: size.height * 0.09,
              width: size.width,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.grey.shade800,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          "Todo",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Container(
                        width: 45,
                        height: 3,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          "Imágenes",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Container(
                        width: 80,
                        height: 3,
                        color: Colors.transparent,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.2),
            Image.asset(
              "assets/logogoogle.png",
              height: size.height * 0.1,
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Colors.grey.shade400),
                        top: BorderSide(color: Colors.grey.shade400),
                        bottom: BorderSide(color: Colors.grey.shade400)),
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 15, right: 15),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.07,
                  color: Colors.blue,
                  width: size.height * 0.07,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPagePage()),
                      );
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
