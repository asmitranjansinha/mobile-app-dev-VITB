class ImageDateModel {
  String? imagePath;
  String? date;
  String? time;

  ImageDateModel({
    this.imagePath,
    this.date,
    this.time,
  });

  ImageDateModel.fromJson(Map<String, dynamic> json) {
    imagePath = json['imagePath'];
    date = json['date'];
    date = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imagePath'] = imagePath;
    data['date'] = date;
    data['time'] = time;

    return data;
  }
}
