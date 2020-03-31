
class Video {
  String id;
  String titulo;
  String imagem;
  String descricao;
  String canal;

  Video({this.id, this.titulo, this.imagem, this.descricao, this.canal});

  /*
  static convertJson(Map<String, dynamic> json) {
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      descricao: json["snippet"]["channelId"],
      canal: json["snippet"]["channelId"],
    );
  }
*/
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      descricao: json["snippet"]["description"],
      canal: json["snippet"]["channelTitle"],
    );
  }

}