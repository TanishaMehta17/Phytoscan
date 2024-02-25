import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/trader/services/trader_services.dart';

class CameraScreen extends StatefulWidget {
  static const String routeName = '/camera';

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;
  AdminServices traderServices =AdminServices();
  final picker = ImagePicker();
  void navigate(){
    
    traderServices.image(context: context, images: _image!, onSuccess: () {
    //  Navigator.pushNamed(context, AppRoutes.api,arguments: _image);
    });
   
  }
  
  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });

      // Save the image to the gallery
      GallerySaver.saveImage(pickedFile.path);
    }
  
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });

      // Save the image to the gallery
    //  GallerySaver.saveImage(pickedFile.path);
    }
   // Navigator.pushNamed(context, AppRoutes.api, arguments:_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Selection'),
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: _image == null ? Text('No image selected.') : Image.file(_image!),height: 400,width: 500,),
            SizedBox(height: 120),
            ElevatedButton(
              onPressed: getImageFromCamera,
              child: Text(
                'Camera Access',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black), // Adjust the font size as needed
              ),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size(200, 50), // Adjust the button's width and height
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: getImageFromGallery,
              child: Text(
                'Select from gallery',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black), // Adjust the font size as needed
              ),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size(200, 50), // Adjust the button's width and height
              ),
            ),
            SizedBox(
              height: 30,
            ),
             ElevatedButton(
              onPressed:()=> navigate(),
              child: Text(
                'Detect Plant',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black), // Adjust the font size as needed
              ),
              style: ElevatedButton.styleFrom(
                minimumSize:
                    Size(200, 50), // Adjust the button's width and height
              ),
            ),
          ],
        ),
      
    );
  }
}