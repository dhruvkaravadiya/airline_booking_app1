import 'package:airline_booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../utils/app_layout.dart';

class CustomToggleSwitch extends StatefulWidget {
  const CustomToggleSwitch({super.key});

  @override
  State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
}
                                    
class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return ToggleSwitch(
      minHeight: 30,
      minWidth: size.width / 2 - 22,
      totalSwitches: 2,
      cornerRadius: 50,
      activeBgColor: const [Colors.white],
      activeFgColor: Colors.black,
      inactiveBgColor: Styles.lightbluex,
      inactiveFgColor: Colors.grey,
      labels: const ["Airline", "Hotels"],
      customTextStyles: const [
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ],
    );
  }
}
