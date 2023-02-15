import 'package:flutter/material.dart';

class countrysel extends StatefulWidget {
  const countrysel({super.key});

  @override
  State<countrysel> createState() => _countryselState();
}

BorderSide style = const BorderSide(
  color: Colors.deepPurple,
);

enum country { india1, india2, india3, netherland, usa, uk, japan, singapoor }

country? _selectedCountry = country.india1;

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
      backgroundColor: const Color.fromRGBO(182, 234, 218, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(48, 30, 103, 2),
        title: const Text("Select the country"),
        elevation: 2.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: Colors.deepPurple,
            )),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Radio(
                  value: country.india1,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India(Mumbai)",
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
                Radio(
                  value: country.usa,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "USA",
                            style: TextStyle(
                              fontSize: 30.0,
                              letterSpacing: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Row(
              children: [
                Radio(
                  value: country.uk,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "UK",
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
                Radio(
                  value: country.india2,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India(Delhi)",
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
                Radio(
                  value: country.netherland,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "Netherland",
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
                Radio(
                  value: country.japan,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "Japan",
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
                Radio(
                  value: country.singapoor,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "Singapoor",
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
                Radio(
                  value: country.india3,
                  groupValue: _selectedCountry,
                  onChanged: (value) {
                    setState(() {
                      // style = const BorderSide(color: Colors.greenAccent);
                      _selectedCountry = value;
                    });
                  },
                  fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 80.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: style,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 8.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.flag_outlined,
                            size: 30.0,
                          ),
                          Text(
                            "India(Hydrabad)",
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
