import 'package:applicationnplace/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
 ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();


  _savePlace(){
    final enterTitle =  _titleController.text;
    if(enterTitle.isEmpty){
      return ;
    }
    ref.read(userPlacesProvider.notifier).addPlace(enterTitle);
     Navigator.of(context).pop();

  }

  void dispose(){
    super.dispose();
    _titleController.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(title:const Text('Add new place ')),
      body:SingleChildScrollView(child: Column(
        children: [
          TextField(
            decoration:const InputDecoration(labelText: 'Title'),
            controller: _titleController,
          ),
          ElevatedButton.icon(
            onPressed: _savePlace,
            icon:const Icon(Icons.add),
          
            label:const Text('Add Place'),
             style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,  
            foregroundColor: Colors.white,  
            padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 15), 
    
  ),
            
            
          ),
        ],
      ),)
    );
  }
}