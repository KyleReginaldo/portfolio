import 'package:flutter/material.dart';

class SchedScreen extends StatelessWidget {
  const SchedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
          opacity: 0.2,
        ),
      ),
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: const [
          TableRow(
            decoration: BoxDecoration(),
            children: [
              Text('text1'),
              Text('text1'),
              Text('text1'),
              Text('text1'),
            ],
          ),
          TableRow(
            children: [
              Text('text2'),
              Text('text2'),
              Text('text2'),
              Text('text2'),
            ],
          ),
        ],
      ),
    );
  }
}
