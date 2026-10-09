import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeContent(),
    //Content2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chairul App"),
      ),
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Form Pendaftaran Akun",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 50,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20)),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.green,
                  ),
              ),
              const SizedBox(width: 12),
              Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.greenAccent,
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}