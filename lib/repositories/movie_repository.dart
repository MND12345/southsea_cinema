import 'package:southsea_cinema/models/movie.dart';
class MovieRepository{
  List<Movie> getMovies() {
    return [
      Movie(
        id: '1',
        title: 'Spiderman: Brand New Day',
        synopsis: 'Peter Parker protects New York as Spider-Man while facing a new threat and coping with a world that has forgotten him.',
        ageRating: '12A',
        screeningTime: '21 October',
        ticketPrice: 12.99,
        posterImagePath: 'assets/images/Spiderman.jpg',
      ),
      Movie(
        id: '2',
        title: 'Pacific Rim',
        synopsis: ' Set in the future, when Earth is at war with the Kaiju,[b] colossal sea monsters which have emerged from an interdimensional portal on the bottom of the Pacific Ocean. To combat the monsters, humanity unites to create the Jaegers, gigantic humanoid mechas',
        ageRating: '12A',
        screeningTime: '22 October',
        ticketPrice: 14.99,
        posterImagePath: 'assets/images/pacific_rim.jpg',
      ),
    
    ];
  }
}