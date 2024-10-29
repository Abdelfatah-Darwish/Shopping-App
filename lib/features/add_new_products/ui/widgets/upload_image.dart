import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

import 'package:shopping_app/delete_this_after_merge/theming/colors.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? _image1;
  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image1 = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _pickImage,
        child: Container(
          width: 150.w,
          height: 150.h,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: _image1 == null
              ? const Center(
                  child: Text('Click to upload', textAlign: TextAlign.center))
              : Image.file(_image1!, fit: BoxFit.cover),
        ));
  }
}
