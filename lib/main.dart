import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lawang Sewu',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/lawangsewu.jpeg',
              height: 250,
              width: 412,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Lawang Sewu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text('08:00 - 20:00'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text('Rp 30.000'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                '''Lawang Sewu berada di lokasi yang cukup strategis di Kota Semarang. Berada di bundaran Tugu Muda yang tidak jauh dari Kantor Balaikota Semarang dan dari pusat oleh-oleh khas Semarang. Tepatnya berada di Komplek Tugu Muda, Jl. Pemuda, Sekayu, Semarang Tengah, Kota Semarang Jawa Tengah 50132. Karena Lawang Sewu merupakan museum kereta api di Semarang, di sini Kamu akan mengetahui sejarah pembuatan kereta api dari pertama kali ada sampai sekarang. Berbagai macam miniatur lokomatif dan gerbong ada di sini dan akan menambah wawasan meskipun Kamu sedang berlibur.''',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://visitjawatengah.jatengprov.go.id/assets/images/0c7722dc-acc8-4c45-aac5-02688f2284df.jpeg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://asset.kompas.com/crops/LhI4mDzIJAoA_A__yUsyDmE_1pw=/0x0:1000x667/750x500/data/photo/2018/03/28/1381520004.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://asset.kompas.com/crops/AN_MurW5qyTJaY6PqvZVkD-UOD0=/0x42:1000x709/750x500/data/photo/2018/03/28/2209272129.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
