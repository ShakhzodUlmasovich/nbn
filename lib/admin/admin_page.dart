import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ngn/models/size_config.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  TextEditingController bozorController = TextEditingController();
  int counter = 1;
  late final XFile? image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Admin",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(28),
                  top: getProportionateScreenHeight(22)),
              height: getProportionateScreenHeight(57),
              width: getProportionateScreenWidth(317),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter last Name';
                  }
                  return null;
                },
                controller: bozorController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.home),
                  hintText: "Bozor nomi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(28),
                  top: getProportionateScreenHeight(22)),
              height: getProportionateScreenHeight(57),
              width: getProportionateScreenWidth(317),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter last Name';
                  }
                  return null;
                },
                controller: bozorController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.shop),
                  hintText: "Do'kon nomi",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              height: getProportionateScreenHeight(470),
              child: ListView.builder(
                  itemCount: counter,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: getProportionateScreenWidth(28),
                                top: getProportionateScreenHeight(22)),
                            height: getProportionateScreenHeight(57),
                            width: getProportionateScreenWidth(317),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter last Name';
                                }
                                return null;
                              },
                              controller: bozorController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.shop_2),
                                hintText: "Mahsulot nomi",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: getProportionateScreenWidth(28),
                                top: getProportionateScreenHeight(22)),
                            height: getProportionateScreenHeight(57),
                            width: getProportionateScreenWidth(317),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter last Name';
                                }
                                return null;
                              },
                              controller: bozorController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.money),
                                hintText: "Narxi",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: getProportionateScreenHeight(20)),
                            width: getProportionateScreenWidth(200),
                            height: getProportionateScreenHeight(40),
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(50)),
                            child: ElevatedButton(
                              onPressed: () async {
                                image = await _picker.pickImage(
                                    source: ImageSource.gallery);
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.image),
                                  SizedBox(
                                    width: getProportionateScreenWidth(10),
                                  ),
                                  Text("Mahsulot rasmi")
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: getProportionateScreenHeight(20)),
                            height: getProportionateScreenHeight(50),
                            width: getProportionateScreenWidth(50),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  counter++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(200),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30)
              ),
              child: IconButton(onPressed: (){}, icon: Text("Yuborish")),
            )
          ],
        ),
      ),
    );
  }
}
