import 'package:flutter/material.dart';

class MyRequestDetails extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final _controller;
  MyRequestDetails(this._controller);
  @override
  Widget build(BuildContext context) {
    _titleController.text = _controller.myRequest.title;
    _descriptionController.text = _controller.myRequest.description;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          child: Column(
            children: <Widget>[
              Text(
                "My Request",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: _titleController,
                enabled: false,
                onSubmitted: (_) {},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Desciption'),
                controller: _descriptionController,
                keyboardType: TextInputType.number,
                enabled: false,
                onSubmitted: (_) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
