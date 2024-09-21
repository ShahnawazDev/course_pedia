import 'package:course_pedia/image_path.dart';
import 'package:course_pedia/widgets/course_card.dart';
import 'package:course_pedia/widgets/custom_banner.dart';
import 'package:course_pedia/widgets/custom_card.dart';
import 'package:course_pedia/widgets/notification_icon.dart';
import 'package:course_pedia/widgets/popular_course_card.dart';
import 'package:course_pedia/widgets/switch_options.dart';
import 'package:course_pedia/widgets/toppers_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(ImagePath.userAvatar),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Krishna',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Better yourself each day everyday',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const NotificationIcon(notificationCount: 2),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Online / Offline Switch
                  const Center(child: SwitchOption()),

                  // Free and Paid Sections
                  SizedBox(
                    height: 200,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CustomBanner(
                          title: 'Live Sections on JEE Exams',
                          subtitle: 'Live Sections on JEE Exams',
                          imagePath: ImagePath.customBannerImage1,
                          backgroundColor: Color(0xFFF7E2A5),
                        ),
                        SizedBox(width: 10),
                        CustomBanner(
                          title: 'Free Courses',
                          subtitle: 'Live Sections on JEE Exams',
                          imagePath: ImagePath.customBannerImage2,
                          backgroundColor: Color(0xFFFED1BA),
                        ),
                      ],
                    ),
                  ),

                  // Other Cards
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CustomCard(
                            title: 'Free Courses',
                            imagePath: ImagePath.freeCoursesIcon),
                        CustomCard(
                            title: 'Attendance',
                            imagePath: ImagePath.attendanceIcon),
                        CustomCard(
                            title: 'Store', imagePath: ImagePath.storeIcon),
                        CustomCard(
                            title: 'Assessment',
                            imagePath: ImagePath.assessmentIcon),
                      ],
                    ),
                  ),

                  // Toppers Section
                  const SizedBox(height: 20),
                  const Text(
                    "Toppers of ABC",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ToppersCard(
                          title: 'NEET Toppers of Rajbir Institute',
                        ),
                        ToppersCard(
                          title: '10th Class Toppers of Rajbir Institute',
                        ),
                      ],
                    ),
                  ),

                  // Popular Courses
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "View All",
                        style:
                            TextStyle(color: Color(0xFFEB5757), fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // const CourseCardWithDetails(),
                  SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        PopularCourseCard(),
                        PopularCourseCard(),
                      ],
                    ),
                  ),

                  // All Courses
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "View All",
                        style:
                            TextStyle(color: Color(0xFFEB5757), fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 360,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CourseCard(),
                        CourseCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Referral Section
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              width: double.infinity,
              color: Colors.grey[200],
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      ImagePath.cashbackRewardImage,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Refer & Earn',
                          style: TextStyle(
                              color: Color(0xFF4C4C4C), fontSize: 16)),
                      const Text('Cashback & Rewards',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      const Text(
                          'Invite Your Friends & Get Up \nto ₹500 After Registration',
                          style: TextStyle(
                            color: Color(0xFF454545),
                            fontSize: 14,
                          )),
                      MaterialButton(
                        color: const Color(0xFF272A34),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Invite',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
