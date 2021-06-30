import 'package:flutter/foundation.dart';

class Shop {
  Shop({
    @required this.name,
    @required this.image,
    @required this.district,
    @required this.contactNumber,
  });
  final String? name;
  final String? image;
  final String? district;
  final int? contactNumber;

  @override
  String toString() => "$name";
}

List<Shop> shops = [
  Shop(
    name: "Inizeo",
    image:
        "https://lh5.googleusercontent.com/-kdTPE2ujdTs/XA0aHbRpQJI/AAAAAAAA2rA/9vihbA3aQgE-Vli7tiph7crZ7YBtKCwrwCLIBGAYYCw/w1440-h1080-k-no/",
    district: "Hulhumale",
    contactNumber: 7683541,
  ),
  Shop(
    name: "Slender Mart",
    image:
        "https://fastly.4sqi.net/img/general/200x200/25595632_If31pqtV8M0539b7gwbDjuTcCw9JaUqsDuOB9B9JNfQ.jpg",
    district: "Henveiru",
    contactNumber: 7236752,
  ),
  Shop(
    name: "Fathaha Star",
    image:
        "https://fastly.4sqi.net/img/general/600x600/69841231_lqpZdqcfbYca79euZz8cAva-96OPd8GZlifH4F4TMEk.jpg",
    district: "Maafannu",
    contactNumber: 9867230,
  ),
];
