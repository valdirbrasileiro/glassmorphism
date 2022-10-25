import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatefulWidget {
  const Glassmorphism({
    Key? key,
  }) : super(key: key);

  @override
  State<Glassmorphism> createState() => _GlassmorphismState();
}

class _GlassmorphismState extends State<Glassmorphism> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(children: [
              SizedBox(
                height: size.height,
                child: Image.asset(
                  'images/recife.jpeg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                          width: 400,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Colors.grey[400]!, width: 2),
                          )),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
