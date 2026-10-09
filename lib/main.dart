// import 'package:flutter/material.dart';
// import 'package:mobile_app/constrants/colors.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: .fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int currentIndex = 0;
//
//   final List<Widget> pages = const [
//     HomeContent(),
//     //Content2(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Chairul App"),
//       ),
//       body: pages[currentIndex],
//
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings'
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class HomeContent extends StatelessWidget{
//   const HomeContent({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Form Pendaftaran Akun",
//             style: TextStyle(
//               color: Colors.blueAccent,
//               fontSize: 50,
//             ),
//           ),
//           const Padding(padding: EdgeInsets.only(bottom: 20)),
//           Container(
//             width: 80,
//             height: 80,
//             color: AppColors.primary,
//           ),
//           const SizedBox(height: 20),
//           Row(
//             children: [
//               Expanded(
//                   child: Container(
//                     height: 50,
//                     color: Colors.green,
//                   ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                   child: Container(
//                     height: 50,
//                     color: Colors.greenAccent,
//                   ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design System Demo'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Universitas Esa Unggul',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Tekan tombol di bawah untuk melihat lokasi kampus.',
            ),

            const SizedBox(height: 24),

            AppButton(
              label: 'Buka Google Maps',
              icon: Icons.location_on,
              url: 'https://www.google.com/maps/search/?api=1&query=Universitas+Esa+Unggul',
            ),

            const SizedBox(height: 16),

            AppButton(
              label: 'Tes Tombol',
              icon: Icons.touch_app,
              url: 'https://www.google.com/maps/search/?api=1&query=Universitas+Esa+Unggul',
              onPressed: () {
                debugPrint('Tombol berhasil ditekan!');
              },
            ),
          ],
        ),
      ),
    );
  }
}