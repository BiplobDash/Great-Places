import 'package:flutter/material.dart';
import 'package:great_places_app/widget/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a New Place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'title'),
                    controller: _titleController,
                  ),
                  SizedBox(height: 10,),
                  ImageInput()
                ],
              ),
            ),
          )),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).accentColor,
            ),
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            label: Text(
              'Add Place',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
