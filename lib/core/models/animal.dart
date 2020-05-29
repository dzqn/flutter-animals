class Animal {
  String key;
  String name;
  Image image;
  SmallDescription smallDescription;
  String mediumDescription;
  String detailDescription;

  Animal(
      {this.key,
      this.name,
      this.image,
      this.smallDescription,
      this.mediumDescription,
      this.detailDescription});

  Animal.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    name = json['name'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    smallDescription = json['smallDescription'] != null
        ? new SmallDescription.fromJson(json['smallDescription'])
        : null;
    mediumDescription = json['mediumDescription'];
    detailDescription = json['detailDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['name'] = this.name;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    if (this.smallDescription != null) {
      data['smallDescription'] = this.smallDescription.toJson();
    }
    data['mediumDescription'] = this.mediumDescription;
    data['detailDescription'] = this.detailDescription;
    return data;
  }
}

class Image {
  String cartoonImage;
  String detailImage;

  Image({this.cartoonImage, this.detailImage});

  Image.fromJson(Map<String, dynamic> json) {
    cartoonImage = json['cartoonImage'];
    detailImage = json['detailImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cartoonImage'] = this.cartoonImage;
    data['detailImage'] = this.detailImage;
    return data;
  }
}

class SmallDescription {
  int lifeTime;
  double weight;

  SmallDescription({this.lifeTime, this.weight});

  SmallDescription.fromJson(Map<String, dynamic> json) {
    lifeTime = json['lifeTime'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lifeTime'] = this.lifeTime;
    data['weight'] = this.weight;
    return data;
  }
}
