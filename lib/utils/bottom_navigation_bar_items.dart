import 'package:course_pedia/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<BottomNavigationBarItem> get buildBottonNavigationBarItems {
  return [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        ImagePath.homeSvgIcon,
        colorFilter: const ColorFilter.mode(Color(0xFF7c7c7c), BlendMode.srcIn),
      ),
      activeIcon: CircularIcon(
        icon: SvgPicture.asset(
          ImagePath.homeSvgIcon,
          colorFilter:
              const ColorFilter.mode(Color(0xFF7D23E0), BlendMode.srcIn),
        ),
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagePath.batchesSvgIcon),
      activeIcon: CircularIcon(
        icon: SvgPicture.asset(
          ImagePath.batchesSvgIcon,
          colorFilter:
              const ColorFilter.mode(Color(0xFF7D23E0), BlendMode.srcIn),
        ),
      ),
      label: "Batches",
    ),
    BottomNavigationBarItem(
      icon: buildMessageIcon(ImagePath.messageSvgIcon, 5),
      activeIcon: CircularIcon(
        icon: buildMessageIcon(ImagePath.messageSvgIcon, 5, isActive: true),
      ),
      label: "Chat",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagePath.profileSvgIcon),
      activeIcon: CircularIcon(
        icon: SvgPicture.asset(
          ImagePath.profileSvgIcon,
          colorFilter:
              const ColorFilter.mode(Color(0xFF7D23E0), BlendMode.srcIn),
        ),
      ),
      label: "Profile",
    ),
  ];
}

class CircularIcon extends StatelessWidget {
  final Widget icon;

  const CircularIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF6EDFF),
      ),
      padding: const EdgeInsets.all(12.0),
      child: icon,
    );
  }
}

Widget buildMessageIcon(String iconPath, int newMessages,
    {bool isActive = false}) {
  return Stack(
    children: [
      SvgPicture.asset(
        iconPath,
        colorFilter: isActive
            ? const ColorFilter.mode(Color(0xFF7D23E0), BlendMode.srcIn)
            : null,
      ),
      if (newMessages > 0)
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: const Color(0xFF7D23E0),
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: const BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: Text(
              '$newMessages',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
    ],
  );
}
