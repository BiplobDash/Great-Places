import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: _storedImage != null
              ? Image.file(
                  _storedImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text('No Image Taken!', textAlign: TextAlign.center,),
          alignment: Alignment.center,
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera),
                label: Text('Take Picture'),
                ),
                )
      ],
    );
  }
}
