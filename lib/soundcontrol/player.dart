import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  final bool canRec;
  const Player({Key? key, required this.canRec}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.grey),
        child: Row(
          children: [
            const SizedBox(width: 10),
            _buildPlayControl(),
            if (canRec) ...[const SizedBox(width: 10), _buildRecControl()],
            ElevatedButton.icon(
              icon: Icon(Icons.pause_circle_filled_rounded),
              label: Text("Pause"),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
          ],
        ));
  }

  Widget _buildPlayControl() {
    late Icon icon;
    late Color color;
    icon = Icon(Icons.play_circle, color: Colors.white, size: 30);
    color = Colors.red.withOpacity(0.1);
    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 56, height: 56, child: icon),
          onTap: () {},
        ),
      ),
    );
  }

  Widget _buildRecControl() {
    late Icon icon;
    late Color color;
    icon = Icon(Icons.mic, color: Colors.red, size: 30);
    color = Colors.red.withOpacity(0.1);
    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 56, height: 56, child: icon),
          onTap: () {},
        ),
      ),
    );
  }
}
