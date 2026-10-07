class MoviesModel {
  late final String id;
  late final String title;
  late final String japaneseTitle;
  late final String image;
  late final String movieBanner;
  late final String description;
  late final String director;
  late final String producer;
  late final String rtScore;
  late final String releaseDate;
  late final String url;

  MoviesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    japaneseTitle = json['original_title'];
    image = json['image'];
    movieBanner = json['movie_banner'];
    description = json['description'];
    director = json['director'];
    producer = json['producer'];
    rtScore = json['rt_score'];
    releaseDate = json['release_date'];
    url = json['url'];
  }
}
