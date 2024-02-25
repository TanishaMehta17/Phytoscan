
//  import 'package:flutter/material.dart';
//  import 'dart:io';

// import 'package:phytoscan/models/plant.dart';
// class Api extends StatefulWidget {
//   static const String routeName = '/api';

//   @override
//   _ApiState createState() => _ApiState();
// }

// class _ApiState extends State<Api> {
//   late Map<String,dynamic> ip;
//   late Plant plant;
//   late String _image;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
    
//     // Extract the image from the route arguments
//     // _image = ModalRoute.of(context)!.settings.arguments as File?;
//     // _image=null;
//     ip= ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
//     plant=Plant(ORIGINAL_NAME: ip["data"]["ORIGINAL_NAME"],NORMAL_USE: ip["data"]["NORMAL_USE"],MEDICAL_USE: ip["data"]["MEDICAL_USE"],
//       HARMFUL_EFFECT: ip["data"]["HARMFUL_EFFECT"],BIOLOGICAL_NAME: ip["data"]["BIOLOGICAL_NAME"]
//     );

//     _image=ip["link"];
//     print("_image:: ");
//     print(_image);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Color(0xFFE0EFE2),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 196, 222, 200),
//         title: Text('Details:-'),
//       ),
//       body: Card(
//         margin: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Use the received image
//             _image != null
//                 ? Image.network(
//   _image,
//   height: 200.0,
//   fit: BoxFit.cover,
// )
//                 : Text("No img passed"),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     plant.ORIGINAL_NAME,
//                     maxLines: null,
//                     overflow: TextOverflow.visible,
//                     style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8.0),
//                   Text(
                    
//                     plant.BIOLOGICAL_NAME,
//                     maxLines: null,
//                     overflow: TextOverflow.visible,
//                     style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8.0),
//                 Text(
//                     plant.NORMAL_USE,
//                     maxLines: null,
//                     overflow: TextOverflow.visible,
//                     style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8.0),
//                  Text(
//                     plant.MEDICAL_USE,
//                     maxLines: null,
//                     overflow: TextOverflow.visible,
//                     style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8.0),
//                  Text(
//                     plant.HARMFUL_EFFECT,
//                     maxLines: null,
//                     overflow: TextOverflow.visible,
//                     style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8.0),
                 
                 
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:phytoscan/models/plant.dart';

class Api extends StatefulWidget {
  static const String routeName = '/api';

  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  late Map<String, dynamic> ip;
  late Plant plant;
  late String _image;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    ip = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    plant = Plant(
      ORIGINAL_NAME: ip["data"]["ORIGINAL_NAME"],
      NORMAL_USE: ip["data"]["NORMAL_USE"],
      MEDICAL_USE: ip["data"]["MEDICAL_USE"],
      HARMFUL_EFFECT: ip["data"]["HARMFUL_EFFECT"],
      BIOLOGICAL_NAME: ip["data"]["BIOLOGICAL_NAME"],
    );

    _image = ip["link"];
    print("_image:: ");
    print(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 196, 222, 200),
        title: Text('Details:-'),
      ),
      body: SingleChildScrollView(
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _image != null
                  ? Image.network(
                      _image,
                      height: 350.0,
                      fit: BoxFit.cover,
                    )
                  : Text("No img passed"),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLabelAndText("Original Name", plant.ORIGINAL_NAME),
                    _buildLabelAndText("Biological Name", plant.BIOLOGICAL_NAME),
                    _buildLabelAndText("Normal Use", plant.NORMAL_USE),
                    _buildLabelAndText("Medical Use", plant.MEDICAL_USE),
                    _buildLabelAndText("Harmful Effect", plant.HARMFUL_EFFECT),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget _buildLabelAndText(String label, String text) {
  return Container(
    
    margin: EdgeInsets.symmetric(vertical: 8.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black54, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
      // boxShadow: Colors.green;
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label+":-",
          style: TextStyle(
            color: Color.fromARGB(255, 16, 128, 60),
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          maxLines: null,
          overflow: TextOverflow.visible,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6)),
        ),
      ],
    ),
  );
}

}
