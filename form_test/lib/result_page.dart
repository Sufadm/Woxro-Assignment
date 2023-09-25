import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String directorName;
  final String movieName;
  const ResultPage(
      {super.key, required this.directorName, required this.movieName});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    List<String> details = [widget.directorName, widget.movieName];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      clicked
                          ? Container(
                              height: 50,
                              width: double.infinity,
                              color: const Color.fromARGB(255, 219, 214, 214),
                              child: Center(
                                  child: Text(
                                      'Director Name : ${details[index]}')))
                          : const Text(''),
                      const SizedBox(
                        height: 10,
                      ),
                      clicked
                          ? Center(
                              child: Container(
                                  color:
                                      const Color.fromARGB(255, 219, 214, 214),
                                  height: 50,
                                  width: double.infinity,
                                  child: Center(
                                      child: Text(
                                          'Movie Name : ${details[index]}'))),
                            )
                          : const Text(''),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clicked = false;
                    });
                  },
                  child: const Text('Remove')),
            )
          ],
        ),
      ),
    );
  }
}
