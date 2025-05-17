// Flutter'ın materyal tasarım widget'larını içe aktarır
import 'package:flutter/material.dart';

// Uygulamayı başlatan ana fonksiyon, => işareti tek satırlık fonksiyonlarda kullanılır
void main() => runApp(const MyApp());

// MyApp sınıfı, uygulamanın ana sınıfı, StatelessWidget'tan türer çünkü durumu değişmeyecek
class MyApp extends StatelessWidget {
  // Kurucu method, super.key üst sınıfa anahtar değer gönderir
  const MyApp({super.key});

  // Build metodu, arayüzü oluşturur
  @override
  Widget build(BuildContext context) => MaterialApp(
    // Sağ üstteki debug yazısını kaldırır
    debugShowCheckedModeBanner: false,
    // Uygulamanın ana sayfasını belirler
    home: const HomePage(),
  );
}

// HomePage sınıfı, ana sayfa tasarımını içerir
class HomePage extends StatelessWidget {
  // Kurucu method
  const HomePage({super.key});

  // Build metodu, sayfa arayüzünü oluşturur
  @override
  Widget build(BuildContext context) => Scaffold(
    // Sayfanın arka plan rengini beyaz yapar
    backgroundColor: Colors.white,
    // Body kısmı, sayfanın ana içeriğini tutar
    body: Column(
      // Children içine konulan widget'lar alt alta sıralanır
      children: [
        // Kırmızı üst kısım
        Container(
          // Container'ın arka plan rengini kırmızı yapar
          color: Colors.red,
          // Dört kenardan 16 birim içe doğru boşluk bırakır
          padding: const EdgeInsets.all(16),
          // SafeArea telefon ekranındaki çentik, saat gibi kısımları korur
          child: SafeArea(
            // Column widget'ları alt alta dizer
            child: Column(
              children: [
                // Obilet yazısı, const ile tanımlanır çünkü değişmeyecek
                const Text(
                  "obilet",
                  // Text'in görünüm özellikleri
                  style: TextStyle(
                    fontSize: 32, // Yazı boyutu
                    color: Colors.white, // Yazı rengi
                    fontWeight: FontWeight.bold,
                  ),
                ), // Yazı kalınlığı
                // İki widget arasına 20 birim boşluk bırakır
                const SizedBox(height: 20),

                // Üst menü butonlarını yatayda sıralar
                Row(
                  // Butonları yatayda eşit aralıklarla dağıtır
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Otobüs butonu - İkon ve yazı alt alta
                    Column(
                      children: [
                        // Otobüs ikonu
                        const Icon(Icons.directions_bus, color: Colors.white),
                        // Otobüs yazısı
                        const Text(
                          "Otobüs",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    // Uçak butonu
                    Column(
                      children: [
                        const Icon(Icons.flight, color: Colors.white),
                        const Text(
                          "Uçak",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    // Otel butonu
                    Column(
                      children: [
                        const Icon(Icons.hotel, color: Colors.white),
                        const Text(
                          "Otel",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    // Araç butonu
                    Column(
                      children: [
                        const Icon(Icons.car_rental, color: Colors.white),
                        const Text(
                          "Araç",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    // Feribot butonu
                    Column(
                      children: [
                        const Icon(Icons.directions_boat, color: Colors.white),
                        const Text(
                          "Feribot",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Beyaz alt kısım, Expanded widget'ı kalan tüm alanı kaplar
        Expanded(
          // Padding ile kenarlardan boşluk bırakılır
          child: Padding(
            padding: const EdgeInsets.all(16),
            // Alt kısımdaki widgetları dikey olarak sıralar
            child: Column(
              children: [
                // Nereden text girişi
                Padding(
                  // Alttan 10 birim boşluk
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    // TextField'ın görünüm özellikleri
                    decoration: InputDecoration(
                      // İçine yazılacak ipucu metni
                      hintText: "Nereden",
                      // Arka planı doldurur
                      filled: true,
                      // Arka plan rengi
                      fillColor: Colors.white,
                      // Kenarlık ve köşe yuvarlaklığı
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                // Nereye text girişi
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Nereye",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                // Yeşil buton
                SizedBox(
                  // Butonun genişliği ekran genişliği kadar
                  width: double.infinity,
                  // Butonun yüksekliği 50 birim
                  height: 50,
                  // Yükseltilmiş buton
                  child: ElevatedButton(
                    // Tıklama fonksiyonu (şu an boş)
                    onPressed: () {},
                    // Butonun arka plan rengi yeşil
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    // Butonun içindeki yazı
                    child: const Text(
                      "Otobüs Ara",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

                // Yeşil Butonun Altına Yazdığım Yazı
                const Text(
                  "Kesintisiz İade Hakkı ve 0 Komisyon",
                  style: TextStyle(color: Colors.black54),
                ),
                // Spacer kalan boş alanı doldurur
                const Spacer(),

                // Alt kısımda ki butonları sizin videonuz da ki ile aynı yaptım.
                Row(
                  // Butonları yatayda eşit aralıklarla dağıtır
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Ara butonu
                    Column(
                      children: [
                        // Arama ikonu
                        const Icon(Icons.search, color: Colors.black),
                        // Ara yazısı
                        const Text(
                          "Ara",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    // Seyahatlerim butonu
                    Column(
                      children: [
                        const Icon(Icons.card_travel, color: Colors.black),
                        const Text(
                          "Seyahatlerim",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    // Yardım butonu
                    Column(
                      children: [
                        const Icon(Icons.help, color: Colors.black),
                        const Text(
                          "Yardım",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    // Hesabım butonu
                    Column(
                      children: [
                        const Icon(Icons.person, color: Colors.black),
                        const Text(
                          "Hesabım",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
