import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

void main() {
  group('Home page', () {
    testWidgets('shows the app title', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text('Southsea Cinema'), findsOneWidget);
    });

    testWidgets('shows a card for each movie', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.byType(MovieCard), findsNWidgets(2));
      expect(find.text('Spiderman: Brand New Day'), findsOneWidget);
      expect(find.text('Pacific Rim'), findsOneWidget);
    });

    testWidgets('shows a booking button on each card',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text('Book now'), findsNWidgets(2));
    });
  });
}