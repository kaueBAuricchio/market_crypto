import 'dart:convert';

class CryptoModel{
  String name;
  String image;
  num currentPrice;
  num priceChange24h;
  num priceChangePercentage24h;

  CryptoModel({
       required this.name,
      required this.image,
      required this.currentPrice,
      required this.priceChange24h,
      required this.priceChangePercentage24h
  });

  //Covert json for model
  Map<String,dynamic> toMap(){
    return {
      'name': name,
      'image': image,
      'current_price': currentPrice,
      'price_change_24': priceChange24h,
      'price_change_percentage_24h': priceChangePercentage24h,
    };
  }

  factory CryptoModel.fromMap(Map<String,dynamic> map){
    return CryptoModel(name:map['name'] ?? '',
        image: map['image'] ?? '' ,
        currentPrice: map['current_price'] ?? 0,
        priceChange24h: map['price_change_24'] ?? 0,
        priceChangePercentage24h:map['price_change_percentage_24h'] ?? 0
    );
  }

  //Covert json for model
  String toJson() => jsonEncode(toMap());

  factory CryptoModel.fromJson(String source) =>
      CryptoModel.fromMap(json.decode(source));
}
