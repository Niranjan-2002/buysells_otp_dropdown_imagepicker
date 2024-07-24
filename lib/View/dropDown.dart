import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dropDown2.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}



class _DropDownScreenState extends State<DropDownScreen> {




//contoller
  TextEditingController compNameController = TextEditingController();
List<String> numberlist = [
  'Corporation',
  'Cooperative',
  'Nonprofit Organization',
  'S Corporation',
  'C Corporation',
  'Holding Company',
  'Subsidiary',
  'State-Owned Enterprise',
  'Franchise',
  'Technology',
  'Real Estate',
  'Retail',
  'Manufacturing',
  'Finance',
  'Healthcare',
  'Education',
  'Hospitality',
  'Construction',
  'Transportation',
  'Energy',
  'Entertainment',
  'Media',
  'Telecommunications'
];

// his is like cantroller while passed parameter for dropdown
  String _selectedValue = 'Corporation';


List<String> yearlist=[
  'Less than 1 year',
    '1 to 3 year',
    '4 to 6 year',
    '7 to 10 year'
    '7 to 10 year',
    '20+ years ',
    ];

  String _yearValue = 'Less than 1 year';

List<String> ctypelist = [
  'Sole Proprietorship',
  'Partnership',
  'Limited Liability Company (LLC)',
  'Joint Venture',
  'Public Limited Company (PLC)',
  'Private Limited Company (Ltd)',
];


  String _ctypeValue = 'Sole Proprietorship';




      XFile? _image;
  final _picker = ImagePicker();
// Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = XFile(pickedImage.path);
      });
      // updateProfilePhoto();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 44,
              ),
              child: Image.asset("images/status1.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                width: 388,
                // height: 69,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tell us about your company",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
                    const Text(
                      "Upload logo",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(30, 30, 30, 1)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),




                    GestureDetector(
                      onTap:(){
                       _openImagePicker();
            
           
                      } ,
                      child: Container(
                        height: 134,
                        width: 134,
                        child:  _image == null
            ? Image.asset("images/upload.png")
            : Image.file(File(_image!.path)),
                        //,
                      ),
                    ),




                    const SizedBox(height: 24),
                    const Text(
                      "What is the name your company?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(30, 30, 30, 1)),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      
                      controller: compNameController,

                      
                      decoration: const InputDecoration(
                        //labelText: 'Enter your company name',
                        hintText: 'Enter your company name',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Type of Business",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(30, 30, 30, 1)),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          hintText: 'Type of Business',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        value: _selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedValue = newValue!;
                          });
                        },
                        items: numberlist
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
                      "Type of Company",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(30, 30, 30, 1)),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          hintText: 'Type of Company',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        value: _ctypeValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            _ctypeValue = newValue!;
                          });
                        },
                        items: ctypelist
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(), ),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DropDownTwoScreen()));
                      },
                      child: Container(
                          height: 51,
                          width: 360,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(60, 162, 221, 1),
                            borderRadius:
                                BorderRadius.circular(15), // Circular border
                          ),
                          child: const Center(
                            child: Text(
                              "Next",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(height: 33),

                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
