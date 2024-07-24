import 'package:flutter/material.dart';

class DropDownTwoScreen extends StatefulWidget {
  const DropDownTwoScreen({super.key});

  @override
  State<DropDownTwoScreen> createState() => _DropDownTwoScreenState();
}

class _DropDownTwoScreenState extends State<DropDownTwoScreen> {




List<String> yearlist=[
  'Less than 1 year',
    '1 to 3 year',
    '4 to 6 year',
    '7 to 10 year'
    '7 to 10 year',
    '20+ years ',
    ];

  String _yearValue = 'Less than 1 year';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 44,
            ),
            child: Image.asset("images/status2.png"),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(children: [
                const Text(
                  "Tell us about your company",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(90, 90, 90, 1))),
                const SizedBox(
                  height: 24,
                ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How old is your business?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(30, 30, 30, 1)),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              hintText: 'How old is your business?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            value: _yearValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                _yearValue = newValue!;
                              });
                            },
                            items:yearlist
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(), 
                            ),
                        const SizedBox(height: 24),

                             const Text(
                          "How old is your business?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(30, 30, 30, 1)),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              hintText: 'How old is your business?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            value: _yearValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                _yearValue = newValue!;
                              });
                            },
                            items:yearlist
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(), 
                            ),
                        const SizedBox(height: 24),

                             const Text(
                          "How old is your business?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(30, 30, 30, 1)),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              hintText: 'How old is your business?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            value: _yearValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                _yearValue = newValue!;
                              });
                            },
                            items:yearlist
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(), 
                            ),
                      ],
                    ),
                        const SizedBox(height: 200),
                   
                    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Handle Previous button action
                  print('Previous button pressed');
                },
                child: Text('Previous'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle Next button action
                  print('Next button pressed');
                },
                child: Text('Next'),
              ),
            ],
          ),
              ]
              )
                            
              )
        ],
      ),
    );
  }
}
