class MovieImage {
  String getPosterImg(String posterPath) {
    if (posterPath == null) {
      return 'https://gold-warez.com/templates/Blue-Fine-utf8/images/noimage.gif';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  String getBackgroundImg(String backdropPath) {
    if (backdropPath == null) {
      return 'https://gold-warez.com/templates/Blue-Fine-utf8/images/noimage.gif';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }

  String getActorPhoto(String profilePath) {
    if (profilePath == null) {
      return 'https://frrrutiz.com/themes/main/no-avatar.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }
}
