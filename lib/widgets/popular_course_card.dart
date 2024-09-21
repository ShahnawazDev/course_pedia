import 'package:course_pedia/image_path.dart';
import 'package:flutter/material.dart';

class PopularCourseCard extends StatelessWidget {
  const PopularCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Container(
          width: 267,
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Text(
                    'Mr. Sampath',
                    style: TextStyle(
                      color: Color(0xFF4C4452),
                      fontSize: 16,
                    ),
                  ),
                  Image.asset(
                    ImagePath.checkMarkImage,
                    width: 32,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage(ImagePath.courseImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(children: [
                  Image.asset(ImagePath.courseImage,
                      width: 267, height: 146, fit: BoxFit.fill),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Hinglish',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
              const Center(
                child: Text(
                  'Class 10th - Mathematics',
                  style: TextStyle(
                    color: Color(0xFF4C4452),
                    // fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: const Color(0xFF7774D5),
                onPressed: () {},
                child: const Text('Join',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          ),
        ));
  }
}
