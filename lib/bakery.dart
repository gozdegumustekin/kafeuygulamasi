import 'package:flutter/material.dart';
import 'frame9.dart';

import 'ıcecoffee.dart'; // home_screen1.dart dosyasını import ediyoruz.
import 'hotcoffee.dart'; // Hotcoffee sayfası
import 'hottea.dart'; // Hottea sayfası
import 'bakery.dart'; // Icetea sayfası
import 'ıcetea.dart'; // Bakery sayfası

class Bakery extends StatefulWidget {
  const Bakery({super.key});

  @override
  _BakeryState createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
  TextEditingController _searchController = TextEditingController(); // Arama alanı kontrolü
  List<String> _coffeeItems = [
    'Soğuk Sandviç',
    'Kumru',
    '3 Peynirli Bagel',
    'Chesscake',
    'Supangle',
    'Kek',
  ];
  List<String> _filteredItems = []; // Arama sonuçları
  bool _isSearchVisible = false; // Arama çubuğunun görünürlüğü kontrolü
  String selectedCategory = ''; // Başlangıçta seçili kategori

  @override
  void initState() {
    super.initState();
    _filteredItems = _coffeeItems; // Başlangıçta tüm öğeleri göster
  }

  // Arama işlevselliğini sağla
  void _filterSearchResults(String query) {
    setState(() {
      _filteredItems = _coffeeItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  // Arama kutusunu gizle
  void _closeSearchBar() {
    setState(() {
      _isSearchVisible = false;
      _searchController.clear();
      _filterSearchResults('');
    });
  }

  // Kategori seçildiğinde filtreleme işlemi
  void _filterByCategory(String category) {
    setState(() {
      selectedCategory = category;
      // Kategoriye göre filtreleme işlemi
      _filteredItems = _coffeeItems.where((item) {
        return item.toLowerCase().contains(category.toLowerCase());
      }).toList();
    });
  }

  // Kahve resimlerini eklemek için bir Map
  Map<String, String> coffeeImages = {
    'Soğuk Sandviç': 'assets/images/sandvic.png',
    'Kumru': 'assets/images/kumru.png',
    '3 Peynirli Bagel': 'assets/images/bagel.png',
    'Chesscake': 'assets/images/chesscake.png',
    'Supangle': 'assets/images/supangle.png',
    'Kek': 'assets/images/kek.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // GridView content
            Positioned.fill(
              top: 100, // AppBar'dan sonra biraz boşluk bırak
              left: 65, // Sol kırmızı panelin genişliği
              right: 16,
              bottom: 0,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: _filteredItems.length, // Filtrelenmiş öğe sayısı
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 40,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return _coffeeItem(
                    title: _filteredItems[index], // Filtrelenmiş öğe
                    description: 'Delicious coffee',
                    price: '4.5',
                  );
                },
              ),
            ),

            // Sol kırmızı panel
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Container(
                width: 65,
                decoration: const BoxDecoration(
                  color: Color(0xFFE16076),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _rotatedCategory('Bakery',true),
                    const SizedBox(height: 20),
                    _rotatedCategory('Hot coffees',false),  
                    const SizedBox(height: 20),
                    _rotatedCategory('Ice coffees',false),
                    const SizedBox(height: 20),
                    _rotatedCategory('Hot teas',false),
                    const SizedBox(height: 20),
                    _rotatedCategory('Ice teas',false),
                  ],
                ),
              ),
            ),

            // Fixed AppBar (top bar)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSearchVisible = !_isSearchVisible; // Arama kutusunu aç/kapat
                        });
                      },
                      child: const Icon(Icons.search, color: Colors.black),
                    ),
                    const Text(
                      'THE Coffee',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Arama çubuğu
            Positioned(
              top: 80,
              left: 65,
              right: 16,
              child: Visibility(
                visible: _isSearchVisible,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) => _filterSearchResults(value),
                    decoration: InputDecoration(
                      hintText: 'Arama yap...',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _closeSearchBar, // X'e basıldığında arama kutusunu kapat
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            // Arama öneri listesi
            Positioned(
              top: 140,
              left: 65,
              right: 16,
              child: Visibility(
                visible: _isSearchVisible && _filteredItems.isNotEmpty,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_filteredItems[index]),
                        onTap: () {
                          setState(() {
                            _searchController.text = _filteredItems[index];
                            _isSearchVisible = false;
                            _filterSearchResults(_filteredItems[index]);
                          });
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFAA6DC0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Text('🕹️', style: TextStyle(fontSize: 30)),
            label: 'Joystick',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFE16076),
              child: Icon(Icons.home, color: Colors.white),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Text('🕹️', style: TextStyle(fontSize: 30)),
            label: 'Joystick',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Frame9()), // Ana sayfa olarak HomeScreen'a yönlendir
            ); // Home icon to go back to the previous screen
          }
        },
      ),
    );
  }

  // Kahve item widget'ı
  Widget _coffeeItem({
    required String title,
    required String description,
    required String price,
  }) {
    // Kahve resmini almak için
    String imagePath = coffeeImages[title] ?? 'assets/images/default.jpg';

    return Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.brown[200],
              child: Image.asset(imagePath, fit: BoxFit.cover), // Resmi ekliyoruz
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(description, style: const TextStyle(color: Colors.redAccent)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('\$ $price', style: const TextStyle(color: Colors.grey)),
              const SizedBox(width: 4),
              const Icon(Icons.star, color: Colors.orange, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  // Sol kırmızı paneldeki kategori etiketlerinin döndürülmesi
  Widget _rotatedCategory(String label, bool isHotCoffee) {
    return GestureDetector(
      onTap: () {
        _filterByCategory(
          label,
        ); // Kategoriye tıklandığında o kategoriyi filtrele
        if (label == 'Ice coffees') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Icecoffee(),
            ), // Burada Icecoffee sayfasına geçiş
          );
        } else if (label == 'Hot coffees') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Hotcoffee(),
            ), // Burada Hotcoffee sayfasına geçiş
          );
        } else if (label == 'Ice teas') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Icetea(),
            ), // Burada Icetea sayfasına geçiş
          );
        } else if (label == 'Hot teas') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Hottea(),
            ), // Burada Hottea sayfasına geçiş
          );
        } else if (label == 'Bakery') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Bakery(),
            ), // Burada Icetea sayfasına geçiş
          );
        } else {
          _filterByCategory(label); // Diğer kategoriler için filtreleme işlemi
        }
      },
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          label,
          style: TextStyle(
            color: isHotCoffee ? Colors.white : Color(0xFFE2DD8C),
            fontSize: 14,
            fontFamily: 'Jaini Purva',
          ),
        ),
      ),
    );
  }
}