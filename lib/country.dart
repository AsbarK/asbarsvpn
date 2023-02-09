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
        backgroundColor: const Color.fromRGBO(48, 30, 103, 2),
        title: const Text("Select the country"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80.0,
                    child: Card(
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
        // child: Column(
        //   children: [
        //     const Text("Selected India"),
        //   ],
        // ),
        // child: const ListTile(),
      ),
    );
  }
}
