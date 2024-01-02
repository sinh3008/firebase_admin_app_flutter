import 'dart:io';

import 'package:firebase_admin_app_flutter/customwidgets/radio_group.dart';
import 'package:firebase_admin_app_flutter/models/brand.dart';
import 'package:firebase_admin_app_flutter/models/telescope.dart';
import 'package:firebase_admin_app_flutter/providers/telescope_provider.dart';
import 'package:firebase_admin_app_flutter/utils/color.dart';
import 'package:firebase_admin_app_flutter/utils/constants.dart';
import 'package:firebase_admin_app_flutter/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

class AddTelescopePage extends StatefulWidget {
  static const String routeName = 'addtelescope';

  const AddTelescopePage({super.key});

  @override
  State<AddTelescopePage> createState() => _AddTelescopePageState();
}

class _AddTelescopePageState extends State<AddTelescopePage> {
  final _modelController = TextEditingController();
  final _dimensionController = TextEditingController();
  final _weightController = TextEditingController();
  final _lensDiameterController = TextEditingController();
  final _priceController = TextEditingController();
  final _stockController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Brand? brand;
  String? imageLocalPath;
  String mountDescription = TelescopeUtils.mountList.first;
  String focusType = TelescopeUtils.focusList.first;
  String telescopeType = TelescopeUtils.typeList.first;

  @override
  void dispose() {
    _modelController.dispose();
    _dimensionController.dispose();
    _weightController.dispose();
    _lensDiameterController.dispose();
    _priceController.dispose();
    _stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Telescope'),
        actions: [
          IconButton(
            onPressed: _saveTelescope,
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Card(
              color: kBgItem,
              child: Column(
                children: [
                  imageLocalPath == null
                      ? const Icon(
                          Icons.photo,
                          size: 100,
                        )
                      : Image.file(
                          File(imageLocalPath!),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                  const Text(
                    'Select Telescope Image \n from',
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          getImage(ImageSource.camera);
                        },
                        icon: const Icon(Icons.camera),
                        label: const Text('Camera'),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          getImage(ImageSource.gallery);
                        },
                        icon: const Icon(Icons.browse_gallery),
                        label: const Text('Gallery'),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Consumer<TelescopeProvider>(
                    builder: (context, provider, child) =>
                        DropdownButtonFormField<Brand>(
                      decoration: const InputDecoration(border: InputBorder.none),
                      // hint: const Text('Select Brand'),
                      isExpanded: true,

                      value: brand,
                      validator: (values) {
                        if (values == null) {
                          return 'Please select a brand';
                        }
                        return null;
                      },
                      items: provider.brandList
                          .map((items) => DropdownMenuItem<Brand>(
                                value: items,
                                child: Text(items.name),
                              ))
                          .toList(),
                      onChanged: (value) {
                        provider.brandList.forEach((item) {
                          print(item.name); // In ra tên của mỗi item trong brandList
                        });

                        setState(() {
                          brand = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            RadioGroup(
              groupValue: telescopeType,
              label: 'Select Telescope Type',
              items: TelescopeUtils.typeList,
              onItemSelected: (value) {
                telescopeType = value;
              },
            ),
            RadioGroup(
              groupValue: mountDescription,
              label: 'Select Mount Type',
              items: TelescopeUtils.mountList,
              onItemSelected: (value) {
                mountDescription = value;
              },
            ),
            RadioGroup(
              groupValue: focusType,
              label: 'Select Focus Type',
              items: TelescopeUtils.focusList,
              onItemSelected: (value) {
                focusType = value;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _modelController,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Model',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _dimensionController,
                decoration:
                    const InputDecoration(filled: true, labelText: 'Dimension'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _weightController,
                decoration: const InputDecoration(
                    filled: true, labelText: 'Weight(lb)'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _lensDiameterController,
                decoration: const InputDecoration(
                    filled: true, labelText: 'Lens Diameter(mm)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _priceController,
                decoration:
                    const InputDecoration(filled: true, labelText: 'Price'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  if (num.parse(value) <= 0) {
                    return 'Price should be greater than 0';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _stockController,
                decoration:
                    const InputDecoration(filled: true, labelText: 'Stock'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field must not be empty';
                  }
                  if (num.parse(value) <= 0) {
                    return 'Stock should be greater than 0';
                  }
                  return null;
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void getImage(ImageSource source) async {
    //imageQuality laf chat luong anh tu 0 -100 ; 0 la thap nhat , 100 la cao nhat
    final file =
        await ImagePicker().pickImage(source: source, imageQuality: 50);
    if (file != null) {
      setState(() {
        imageLocalPath = file.path;
      });
    }
  }

  void _saveTelescope() async {
    if (imageLocalPath == null) {
      showMsg(context, 'Please select a telescope image');
    }
    if (_formKey.currentState!.validate()) {
      EasyLoading.show(status: 'Please wait');
      try {
        final imageModel =
            await Provider.of<TelescopeProvider>(context, listen: false)
                .uploadImage(imageLocalPath!);
        final telescope = Telescope(
            model: _modelController.text.trim(),
            brand: brand!,
            type: telescopeType,
            dimension: _dimensionController.text.trim(),
            weightInPound: num.parse(_weightController.text.trim()),
            focustype: focusType,
            lensDiameterInMM: num.parse(_lensDiameterController.text.trim()),
            mountDescription: mountDescription,
            price: num.parse(_priceController.text.trim()),
            stock: num.parse(_stockController.text.trim()),
            thumbnail: imageModel,
            additionalImage: []);
        await Provider.of<TelescopeProvider>(context, listen: false)
            .addTelescope(telescope);
        EasyLoading.dismiss();
        showMsg(context, 'Saved');
        _resetField();
      } catch (e) {
        EasyLoading.dismiss();
        print(e.toString());
      }
    }
  }

  void _resetField() {
    setState(() {
      _modelController.clear();
      _dimensionController.clear();
      _weightController.clear();
      _lensDiameterController.clear();
      _stockController.clear();
      _priceController.clear();
      brand = null;
      imageLocalPath = null;
      focusType = TelescopeUtils.focusList.first;
      mountDescription = TelescopeUtils.mountList.first;
      telescopeType = TelescopeUtils.typeList.first;
    });
  }
}
