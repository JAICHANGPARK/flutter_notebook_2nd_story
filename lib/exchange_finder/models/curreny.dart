class FlagImage {
  static const DNN =
      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-denmark_1f1e9-1f1f0.png";
  static const EUR =
      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-european-union_1f1ea-1f1fa.png";
  static const CZK = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-czech-republic_1f1e8-1f1ff.png";
  static const HUF = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-hungary_1f1ed-1f1fa.png";
  static const PLN = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/flag-for-poland_1f1f5-1f1f1.png";
}

class Currency {
  String img;
  double price;
  String countryCode;
  Currency({this.img, this.price, this.countryCode});
}

List<Currency> priceItems = [
  Currency(img: FlagImage.DNN, price: 671.23, countryCode: "DNN"),
  Currency(img: FlagImage.EUR, price: 89.99, countryCode: "EUR"),
  Currency(img: FlagImage.CZK, price: 2320.30, countryCode: "CZK"),
  Currency(img: FlagImage.HUF, price: 29708.30, countryCode: "HUF"),
  Currency(img: FlagImage.PLN, price: 392.56, countryCode: "PLN"),
];















