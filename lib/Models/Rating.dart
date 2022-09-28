class Rating {
  dynamic rate;
  dynamic count;

  Rating({
    required this.rate,
    required this.count,
  });

  Rating.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }
}
