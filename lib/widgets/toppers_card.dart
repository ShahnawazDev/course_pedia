import 'package:course_pedia/image_path.dart';
import 'package:flutter/material.dart';

class ToppersCard extends StatelessWidget {
  const ToppersCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          // border:
          //     Border.all(color: Colors.black12), // Add border like in the design
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTopperItem(ImagePath.topper1, 'Shree', '720/720'),
                const SizedBox(width: 8),
                _buildTopperItem(ImagePath.topper2, 'Shree', '720/720'),
                const SizedBox(width: 8),
                _buildTopperItem(ImagePath.topper3, 'Shree', '720/720'),
                const SizedBox(width: 8),
                _buildTopperItem(ImagePath.topper4, 'Shree', '720/720'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Helper method to create individual topper item
Widget _buildTopperItem(String imagePath, String name, String score) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imagePath,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        score,
        style:
            const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

// class ToppersCard extends StatelessWidget {
//   const ToppersCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         CircleAvatar(
//           backgroundImage: AssetImage(ImagePath.topperImage),
//         ),
//         SizedBox(height: 4),
//         Text("720/720"),
//       ],
//     );
//   }
// }