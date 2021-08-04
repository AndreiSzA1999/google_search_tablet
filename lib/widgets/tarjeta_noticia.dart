import 'package:flutter/material.dart';

class TarjetaNoticia extends StatelessWidget {
  final String titular;
  final String periodico;
  final String tiempo;
  final String descripcion;

  TarjetaNoticia(
      {required this.tiempo,
      required this.titular,
      required this.periodico,
      required this.descripcion});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8),
      child: Container(
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titular,
                style: TextStyle(color: Colors.blue.shade800, fontSize: 17),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                periodico,
                style: TextStyle(color: Colors.green.shade800, fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.grey.shade600,
              ),
              RichText(
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                        text: tiempo,
                        style: new TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                        )),
                    new TextSpan(
                        text: descripcion,
                        style: new TextStyle(
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
