import 'package:flutter/material.dart';
import 'package:flutter_keyboard_transform/transform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mitra Infromatika Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputText = TextEditingController(text: '');
  TextEditingController transformType = TextEditingController(text: '');

  String info = '';
  String warning = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input Text',
            ),
            controller: inputText,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Transform Type',
            ),
            controller: transformType,
          ),
          ElevatedButton(
            onPressed: () {
              // validation
              if (inputText.text.isEmpty) {
                CustomTransformText()
                    .showValidation('Input Text Tidak boleh kosong', context);
              }

              if (transformType.text.isEmpty) {
                CustomTransformText().showValidation(
                    'Transform Type Tidak boleh kosong', context);
              }

              // goto process
              if (inputText.text.isNotEmpty && transformType.text.isNotEmpty) {
                if (transformType.text == "H" || transformType.text == "h") {
                  // horizontal flip function

                  String output = CustomTransformText().horizontalFlip(
                      inputText.text.toLowerCase(),
                      transformType.text,
                      context);

                  setState(() {
                    info = output;
                  });
                } else if (transformType.text == "V" ||
                    transformType.text == "v") {
                  // vertical flip function

                  String output = CustomTransformText().verticalFlip(
                      inputText.text.toLowerCase(),
                      transformType.text,
                      context);

                  setState(() {
                    info = output;
                  });
                } else {
                  // shift

                  String output = CustomTransformText().shift(
                      inputText.text.toLowerCase(),
                      transformType.text,
                      context);

                  setState(() {
                    info = output;
                  });
                }
              }
            },
            child: const Text("TRANSFORM"),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Result : $info",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "Type Transform : ${transformType.text}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
