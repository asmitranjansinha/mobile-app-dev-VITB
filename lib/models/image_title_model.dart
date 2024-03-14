class ImageTitleModel {
  String? imagePath;
  String? title;

  ImageTitleModel({
    this.imagePath,
    this.title,
  });

  ImageTitleModel.fromJson(Map<String, dynamic> json) {
    imagePath = json['imagePath'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imagePath'] = imagePath;
    data['title'] = title;

    return data;
  }
}
