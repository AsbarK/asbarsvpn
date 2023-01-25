import 'package:flutter/material.dart';

class countrysel extends StatefulWidget {
  const countrysel({super.key});

  @override
  State<countrysel> createState() => _countryselState();
}

class _countryselState extends State<countrysel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select the country"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Selected India"),
          ],
        ),
      ),
    );
    ;
  }
}
