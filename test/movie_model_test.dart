import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model', () {
    test('constructor assigns all properties', () {
      const movie = Movie(
        id: '1',
        title: 'Test Film',
        synopsis: 'A test synopsis.',
        ageRating: '12A',
        screeningTime: '21 October',
        ticketPrice: 12.99,
        posterImagePath: 'assets/images/test.jpg',
      );

      expect(movie.id, '1');
      expect(movie.title, 'Test Film');
      expect(movie.synopsis, 'A test synopsis.');
      expect(movie.ageRating, '12A');
      expect(movie.screeningTime, '21 October');
      expect(movie.ticketPrice, 12.99);
      expect(movie.posterImagePath, 'assets/images/test.jpg');
    });

    test('formattedPrice shows two decimals for a whole-pound price', () {
      const movie = Movie(
        id: '2',
        title: 'Whole Pound Film',
        synopsis: 'Synopsis',
        ageRating: 'PG',
        screeningTime: '22 October',
        ticketPrice: 10,
        posterImagePath: 'assets/images/test.jpg',
      );

      expect(movie.formattedPrice, '£10.00');
    });

    test('formattedPrice shows two decimals for a price with pence', () {
      const movie = Movie(
        id: '3',
        title: 'Pence Film',
        synopsis: 'Synopsis',
        ageRating: 'PG',
        screeningTime: '23 October',
        ticketPrice: 7.5,
        posterImagePath: 'assets/images/test.jpg',
      );

      expect(movie.formattedPrice, '£7.50');
    });
  });
}