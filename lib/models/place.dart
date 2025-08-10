import 'package:uuid/uuid.dart';

 
final uuid = Uuid();

class Place {
  final String id;
  final String title;
  final String? image;

  Place({
    required this.title,
      this.image,  
  }) : id = uuid.v4();
}
