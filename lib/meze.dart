import 'package:flutter/material.dart';

import 'models/yemek.dart';

class MezePage extends StatelessWidget {
  final List<Yemek> yemekler = [
    Yemek(name: 'Ezme', imagePath: 'images/ezme.jpg'),
    Yemek(name: 'Babagannuş', imagePath: 'images/babagannuş.jpg'),
    Yemek(name: 'Havuç Tarator', imagePath: 'images/havuctarator.jpg'),
    // Diğer yemekleri ekleyin
  ];

   MezePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 161, 181),
        title: const Text('MEZELER'),
      ),
      body: ListView.builder(
        itemCount: yemekler.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Container(
              height: 100, // ListTile'ın yüksekliğini arttırmak için Container'ın yüksekliğini belirleme
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey, width: 1.0),
              ),
              child: Center(
                child: ListTile(
                  onTap: () {
                    print('Tıklandı: ${yemekler[index].name}');
                  },
                  leading: Image.asset(
                    yemekler[index].imagePath,
                    width: 100, // Resim boyutunu ayarlamak için width belirleme
                    height:100, // Resim boyutunu ayarlamak için height belirleme
                    fit: BoxFit.cover,
                  ),
                  title: Text(yemekler[index].name, style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
