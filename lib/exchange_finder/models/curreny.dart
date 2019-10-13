class FlagImage {
  static const DNN =
      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-denmark_1f1e9-1f1f0.png";
  static const EUR =
      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-european-union_1f1ea-1f1fa.png";
}

class Currency {
  String img;
  double price;
  String countryCode;

  Currency({this.img, this.price, this.countryCode});
}

List<Currency> items = [
  Currency(img: FlagImage.DNN, price: 671.23, countryCode: "DNN"),
  Currency(img: FlagImage.EUR, price: 89.99, countryCode: "EUR"),
];
