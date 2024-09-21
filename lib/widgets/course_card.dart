import 'package:course_pedia/image_path.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Container(
          width: 300,
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
                child: Stack(
                  children: [
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
                  ],
                ),
              ),
              const Center(
                child: Text(
                  'Class 10th - Mathematics',
                  style: TextStyle(
                    color: Color(0xFF4C4452),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(children: [
                      Image.asset(ImagePath.fullSyllabusIcon, width: 10),
                      const SizedBox(width: 5),
                      const Text('Full Syllabus',
                          style: TextStyle(fontSize: 10)),
                    ]),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Image.asset(ImagePath.scholarIcon, width: 10),
                        const SizedBox(width: 5),
                        const Text('For NEET 2025 & 2026 Aspirants',
                            style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(children: [
                      Image.asset(ImagePath.liveIcon, width: 10),
                      const SizedBox(width: 5),
                      const Text('Live + Recorded',
                          style: TextStyle(fontSize: 10)),
                    ]),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Image.asset(ImagePath.calenderIcon, width: 10),
                        const SizedBox(width: 5),
                        const Text('Batch starts on 16th Aug',
                            style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text('₹ 5000', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 8),
                  Text('10000',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough)),
                  SizedBox(width: 8),
                  Text('50% OFF',
                      style: TextStyle(fontSize: 12, color: Colors.green)),
                ],
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
