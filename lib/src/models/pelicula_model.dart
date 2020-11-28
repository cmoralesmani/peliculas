class Peliculas {
  List<Pelicula> items = new List();
  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueId;

  bool video;
  double voteAverage;
  double popularity;
  int voteCount;
  String releaseDate;
  bool adult;
  String backdropPath;
  String overview;
  List<int> genreIds;
  String title;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  int id;

  Pelicula({
    this.video,
    this.voteAverage,
    this.popularity,
    this.voteCount,
    this.releaseDate,
    this.adult,
    this.backdropPath,
    this.overview,
    this.genreIds,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.id,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    popularity = json['popularity'] / 1;
    voteCount = json['vote_count'];
    releaseDate = json['release_date'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    overview = json['overview'];
    genreIds = json['genre_ids'].cast<int>();
    title = json['title'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    posterPath = json['poster_path'];
    id = json['id'];
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://tutaki.org.nz/wp-content/uploads/2019/04/no-image-1.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  getBackgroundImg() {
    if (posterPath == null) {
      return 'https://tutaki.org.nz/wp-content/uploads/2019/04/no-image-1.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
