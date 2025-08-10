import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/place.dart';
class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title) {
     final newPlace = Place(title: title);
    state = [newPlace,  ...state ];
  }

  void removePlace(Place place) {
    state = state.where((p) => p.id != place.id).toList();
  }

}


final userPlacesProvider =  StateNotifierProvider<UserPlacesNotifier,List<Place>>((ref) => UserPlacesNotifier(), 

);