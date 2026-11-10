import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      color: cinemaSurface,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 150,
              child: Image.asset(
                movie.posterImagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(movie.title, style: cinemaHeaderStyle),
                  const SizedBox(height: 4),
                  Text(
                    'Age rating: ${movie.ageRating}',
                    style: const TextStyle(color: cinemaFontMuted),
                  ),
                  const SizedBox(height: 8),
                  Text(movie.synopsis),
                  const SizedBox(height: 8),
                  Text(
                    'Screening time: ${movie.screeningTime}',
                    style: const TextStyle(color: cinemaBrandLight),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Booking ${movie.title}');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cinemaBrand,
                      foregroundColor: cinemaBackground,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text('Book now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
