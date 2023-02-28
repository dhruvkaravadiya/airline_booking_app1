import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketScreenToggle extends StatefulWidget {
  const TicketScreenToggle({super.key});

  @override
  State<TicketScreenToggle> createState() => _TicketScreenToggleState();
}

class _TicketScreenToggleState extends State<TicketScreenToggle> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          color: Styles.lightbluex),
      child: ToggleSwitch(
        minHeight: 30,
        minWidth: size.width / 2 - 22,
        totalSwitches: 2,
        cornerRadius: 50,
        activeBgColor: const [Colors.white],
        activeFgColor: Colors.black,
        inactiveBgColor: Styles.lightbluex,
        inactiveFgColor: Colors.grey,
        labels: const ["Upcoming", "Previous"],
        customTextStyles: const [
          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
