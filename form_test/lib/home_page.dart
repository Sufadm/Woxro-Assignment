import 'package:flutter/material.dart';
import 'package:form_test/result_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController directorNameController = TextEditingController();
    TextEditingController movieNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            key: _formKey,
            children: [
              TextFormField(
                controller: directorNameController,
                decoration: const InputDecoration(hintText: 'Director Name'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: movieNameController,
                decoration: const InputDecoration(hintText: 'Movie Name'),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ResultPage(
                              directorName: directorNameController.text,
                              movieName: movieNameController.text);
                        }));
                      },
                      child: const Text('Add')))
            ],
          ),
        ),
      ),
    );
  }
}
