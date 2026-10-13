import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';


class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 0;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
          child: Column(
        children: [
          Text("Spiderman: Brand New Day",
          style: TextStyle(fontSize: 22,
          fontWeight: FontWeight.bold
          )),
          SizedBox(
            height: 6,
          ),
          Text("21 October"),
           SizedBox(height: 12),
      Text(
        'Peter Parker protects New York as Spider-Man while facing '
        'a new threat and coping with a world that has forgotten him.',
      ),
     DropdownMenu<int>(
  initialSelection: _ticketQuantity,
  onSelected: (int? value) {
    if (value != null) {
      setState(() {
        _ticketQuantity = value;
      });
    }
  },
  dropdownMenuEntries: const [
    DropdownMenuEntry(value: 0, label: '0'),
    DropdownMenuEntry(value: 1, label: '1'),
    DropdownMenuEntry(value: 2, label: '2'),
    DropdownMenuEntry(value: 3, label: '3'),
    DropdownMenuEntry(value: 4, label: '4'),
    DropdownMenuEntry(value: 5, label: '5'),
  ],
),
const SizedBox(width: 16),
Text('Adult (£7.50)'),

        ],
      )),
    );
  }
}
