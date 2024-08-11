import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Mainbox(label: 'Free Roll')),
          Mainbox(
            label: 'Cash',
          ),
          Mainbox(
            label: 'Tournament',
          ),
        ],
      ),
    );
  }
}

class Mainbox extends StatelessWidget {
  const Mainbox({
    required this.label,
    super.key,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // widget.verificationInteractor.verify();
        },
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 110,
          width: 120,
          child: Center(
              child: Text(
            label,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
