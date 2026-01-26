class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, [this.rating = "PG"]);

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];

    for (Movie movie in movies) {
      if (movie.rating.contains("PG")) {
        pgMovies.add(movie);
      }
    }

    return pgMovies;
  }
}

void main() {
  Movie movie1 = Movie("Casino Royale", "Eon Productions", "PG13");;

  List<Movie> movies = [
    movie1,
    Movie("B", "bb"),
    Movie("C", "cc", "R"),
    Movie("D", "dd", "PG"),
  ];

  List<Movie> pgMovies = Movie.getPG(movies);

  for (Movie movie in pgMovies) {
    print("${movie.title} - ${movie.rating}");
  }
}
