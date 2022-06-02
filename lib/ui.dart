import 'dart:io';

import 'package:crop_image/crop_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:status_stepper/status_stepper.dart';

class KriipsUi extends StatefulWidget {
  const KriipsUi({Key? key}) : super(key: key);

  @override
  State<KriipsUi> createState() => _KriipsUiState();
}

class _KriipsUiState extends State<KriipsUi> {
  final picker = ImagePicker();
  String imagePath = "";
  bool isVisibal = true;
  List<Image> imgPaths = [];
  final controller = CropController(
      // aspectRatio: 1,
      // defaultCrop: const Rect.fromLTRB(0.1, 0.1, 0.9, 0.9),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 60, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('images/kriips.png'),
                      Row(
                        children: const [
                          Text(
                            'Having Trouble?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'Get Help',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 90, top: 40),
                child: StatusStepper(
                  connectorCurve: Curves.easeIn,
                  itemCurve: Curves.easeOut,
                  activeColor: Colors.red,
                  disabledColor: Colors.grey,
                  animationDuration: const Duration(milliseconds: 500),
                  children: [
                    CircleUi("1", Colors.red),
                    CircleUi("2", Colors.red),
                    CircleUi("3", Colors.red),
                    CircleUi("4", Colors.red),
                    CircleUi("5", Colors.grey),
                  ],
                  lastActiveIndex: 3,
                  currentIndex: 3,
                  connectorThickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    texts("Business Information", Colors.black),
                    texts("Merchant Information", Colors.black),
                    texts("Subscription Plan & Billing", Colors.black),
                    texts("Store Information", Colors.grey),
                    texts("Verification", Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 60, top: 100),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: textfield("Store Categorie",
                                  icon: Icons.keyboard_arrow_down),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: textfield(
                                "Store Name*",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            catMethod("Category 1"),
                            const SizedBox(
                              width: 10,
                            ),
                            catMethod("Category 2"),
                            const SizedBox(
                              width: 10,
                            ),
                            catMethod("Category 3"),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Basic Store/Business information",
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Icon(
                                Icons.check_box_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Basic Store/Business information",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textfield(
                                "Rigisterd Business Address",
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: textfield(
                                "Office No, Building, Lane etc (optional)",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textfield(
                                "City",
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: textfield("State",
                                  icon: Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textfield("Country",
                                  icon: Icons.keyboard_arrow_down),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: textfield(
                                "PIN code",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textfield(
                                "State Licence Number",
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: textfield(
                                "GST Number",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textfield(
                                "Email",
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: textfield(
                                "Telephone Number",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textfield("Store Map Location",
                                  icon: Icons.location_on, color: Colors.red),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Store Gallery",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Delivery Options",
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          "Store Pick-up",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          "Store Pick-up",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                choseImage();
                              },
                              child: const Icon(
                                Icons.file_upload_outlined,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                            Expanded(
                              child: Wrap(
                                children: List.generate(
                                  imgPaths.length,
                                  (index) => Container(
                                    width: 100,
                                    height: 60,
                                    color: Colors.red,
                                    child: Image(image: imgPaths[index].image),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Expanded(child: textfield("Area Coverage")),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: textfield("Delivery Speed")),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: textfield("Delivery Speed",
                                          icon: Icons.keyboard_arrow_down)),
                                ],
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "Store Hours",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: textfield("Work Day"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 200,
                                  child: textfield("Opening Time"),
                                ),
                              ],
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            showAlertDialog(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container catMethod(String cat) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, blurRadius: 5.0, offset: Offset(5.0, 5.0)),
          ],
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cat,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.close,
              color: Colors.red,
              size: 12,
            )
          ],
        ),
      ),
    );
  }

  textfield(String labelText, {var icon, Color color = Colors.grey}) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.red),
        suffixIcon: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  CircleUi(
    String text1,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              text1,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  texts(String text2, Color color1) {
    return Text(
      text2,
      style: TextStyle(color: color1, fontWeight: FontWeight.bold),
    );
  }

  choseImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imagePath = pickedFile.path;
        print(pickedFile.path);
        if (imagePath != null) {
          showAlertDialog(context);
          print("hiiii");
        }
      });
    } else {
      print("Error");
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = InkWell(
      onTap: () async {
        Image cropedImage = await controller.croppedImage();
        imgPaths.add(cropedImage);
        Navigator.pop(context);
        setState(() {});
      },
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 201, 22, 82),
            border: Border.all(
              color: const Color.fromARGB(255, 201, 22, 82),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: const Center(
          child: Text(
            "Save Image",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Container(
        width: 1200,
        height: MediaQuery.of(context).size.height - 200,
        child: Center(
            child: CropImage(
          controller: controller,
          image: Image.network(
            imagePath,
            fit: BoxFit.cover,
          ),
          gridColor: Colors.grey,
          onCrop: (rect) => print(rect),
        )
            // Container(
            //   width: 1000,
            //   height: 500,
            //   color: Colors.amber,
            //   child: Image.network(
            //     imagePath,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            ),
      ),
      // content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
