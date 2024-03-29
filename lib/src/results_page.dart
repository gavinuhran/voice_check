import 'package:flutter/material.dart';
import 'navigation.dart';

class ResultsPage extends StatelessWidget {
  final AppNavigator navigator;
  final List<List<String>> items = [
    ['3/8/2023', '87'],
    ['3/7/2023', '85'],
    ['3/6/2023', '93'],
    ['3/5/2023', '88'],
    ['3/4/2023', '79'],
    ['3/3/2023', '85'],
  ];

  ResultsPage({Key? key, required this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 100),
            ElevatedButton(
              child: const Text('Go back to home page'),
              onPressed: () {
                navigator.goBack();
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Score: ${items[index][1]}'),
                    subtitle: Text(items[index][0]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
