class getVideos {
  getVideos({this.id, this.key, this.name, this.site, this.size, this.type});

  int id;
  String key;
  String name;
  String site;
  int size;
  String type;

  factory getVideos.fromJson(Map<String, dynamic> json) => getVideos(
      id: json['results'][0]['id'],
      key: json['results'][0]['key'],
      name: json['results'][0]['name'],
      site: json['results'][0]['site'],
      size: json['results'][0]['size'],
      type: json['results'][0]['type']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'key': key,
        'name': name,
        'site': site,
        'size': size,
        'type': type
      };
}
