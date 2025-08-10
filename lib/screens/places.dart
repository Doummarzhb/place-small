import 'package:applicationnplace/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'add_place.dart';

class PlacesScreeen extends StatelessWidget {
  const PlacesScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('places') ,
      actions: [
        IconButton(
        onPressed: () 
         {
          Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => AddPlaceScreen()),
);
         },
        icon:const Icon(Icons.add),
        ),
      ],
      
      ), 
      body: PlacesList(places: []),
    );
  }
}