import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class SwitchOption extends StatefulWidget {
  const SwitchOption({super.key});

  @override
  State<SwitchOption> createState() => _SwitchOptionState();
}

class _SwitchOptionState extends State<SwitchOption> {
  var _tabTextIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return FlutterToggleTab(
      width: 80,
      borderRadius: 30,
      height: 50,
      selectedIndex: _tabTextIndexSelected,
      selectedBackgroundColors: const [Color(0xFF2E3139)],
      selectedTextStyle: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
      unSelectedTextStyle: const TextStyle(
          color: Colors.black87, fontSize: 14, fontWeight: FontWeight.w500),
      labels: const ['Online', 'Offline'],
      selectedLabelIndex: (index) {
        setState(() {
          _tabTextIndexSelected = index;
        });
      },
      isScroll: false,
    );
  }
}
