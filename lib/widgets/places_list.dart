import 'package:applicationnplace/screens/place_detail.dart';
import 'package:flutter/material.dart';
import '../models/place.dart';
 

class PlacesList extends StatefulWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  State<PlacesList> createState() => _PlacesListState();
}

class _PlacesListState extends State<PlacesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.places.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(widget.places[index].title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlaceDetailScreen(place: widget.places[index]),
            ),
          );
        },
      ),
    );
  }
}
