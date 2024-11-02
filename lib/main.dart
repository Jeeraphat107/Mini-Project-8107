import 'package:flutter/material.dart';
//import 'Shopping3.dart';
import 'orga.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ShoppingApp());
}

/*
[2 whitespaces or 1 tab]assets:
[4 whitespaces or 2 tabs]- images/pizza1.png
[4 whitespaces or 2 tabs]- images/pizza0.png
 */
/*
https://pub.dev/packages/http/install
*/

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สต๊อกเครื่องเขียน',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff5c0e0b)),
        useMaterial3: true,
      ),
      home: const ShoppingHomePage(title: 'สต๊อกเครื่องเขียน'),
    );
  }
}

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({super.key, required this.title});
  final String title;

  @override
  State<ShoppingHomePage> createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // เพิ่มรูปภาพจาก URL
            Image.network(
              'https://png.pngtree.com/thumb_back/fw800/background/20230721/pngtree-d-rendering-of-perfumery-and-cosmetics-store-with-white-black-and-image_3767845.jpg', // URL ของภาพ
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(
              'เครื่องเขียน',
              style: GoogleFonts.mali(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 40,
                color: Color(0xff0e0d4d),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Passing the User object to the SecondPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  ),
                );
              },
              child: Text(
                'รายการสินค้า',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
