import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository', () {
    test('getMovies returns the two mock films', () {
      final repository = MovieRepository();
      final movies = repository.getMovies();

      expect(movies.length, 2);

      expect(movies[0].id, '1');
      expect(movies[0].title, 'Spiderman: Brand New Day');
      expect(movies[0].ticketPrice, 12.99);
      expect(movies[0].posterImagePath, 'assets/images/Spiderman.jpg');

      expect(movies[1].id, '2');
      expect(movies[1].title, 'Pacific Rim');
      expect(movies[1].ticketPrice, 14.99);
      expect(movies[1].posterImagePath, 'assets/images/PacificRim.jpg');
    });

    test('getMovieById returns the film for an existing id', () {
      final repository = MovieRepository();
      final movie = repository.getMovieById('2');

      expect(movie, isNotNull);
      expect(movie?.title, 'Pacific Rim');
    });

    test('getMovieById returns null for a missing id', () {
      final repository = MovieRepository();
      final movie = repository.getMovieById('999');

      expect(movie, isNull);
    });
  });
}
