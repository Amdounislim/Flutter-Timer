import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  File? image;

  final ImagePicker picker = ImagePicker();

  uploadImage() async {
    // final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    var pickedImage = await picker.pickImage(source: ImageSource.camera);

    // image = File(pickedImage!.path);
    print("hhhhhhhhhhhh");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
              onPressed: uploadImage, child: Text('Upload Image')),
        )
      ],
    );
  }
}
