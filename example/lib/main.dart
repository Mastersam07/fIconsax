import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iconsax Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'IconsaxBold Demo'),
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
  List<IconModel> sampleIcons = [
    IconModel(icon: IconsaxBold.activity, name: "Activity icon"),
    IconModel(icon: IconsaxBold.add, name: "Add icon"),
    IconModel(icon: IconsaxBold.notification, name: "Notification icon"),
    IconModel(icon: IconsaxBold.home, name: "Home icon"),
    IconModel(icon: IconsaxBold.people, name: "People icon"),
    IconModel(icon: IconsaxBold.card, name: "Card icon"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(sampleIcons[index].icon, size: 50.0),
                const SizedBox(height: 30.0),
                Text(sampleIcons[index].name, textAlign: TextAlign.center),
              ],
            ),
          );
        },
        itemCount: sampleIcons.length,
      ),
    );
  }
}

class IconModel {
  IconData icon;
  String name;

  IconModel({required this.icon, required this.name});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['icon'] = icon;
    data['name'] = name;
    return data;
  }
}
