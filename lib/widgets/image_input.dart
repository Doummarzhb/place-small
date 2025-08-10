import 'package:flutter/material.dart';

class ImageInput  extends StatefulWidget {
  const ImageInput ({super.key});

  @override
  State<ImageInput > createState() => _ImageInputStateState();
}

class _ImageInputStateState extends State<ImageInput > {
  _takePicture() {
    
  }
   
  // File? _storedImage;

  void _pickImage() {
   
    print('Pick image pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const SizedBox(height: 10),
          TextButton.icon(
            onPressed: _pickImage,
            icon: const Icon(Icons.image),
            label: const Text('Pick Image'),
          ),
        ],
      ),
    );
  }
}
