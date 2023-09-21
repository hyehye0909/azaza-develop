import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageUploadPage extends StatefulWidget {
  @override
  _ImageUploadPageState createState() => _ImageUploadPageState();
}

class _ImageUploadPageState extends State<ImageUploadPage> {
  final ImagePicker _picker = ImagePicker();
  late String _imageUrl = '';


  Future<void> _uploadImage() async {
    final imageFile = await _picker.pickImage(source: ImageSource.gallery);

    if (imageFile == null) {
      // 사용자가 이미지 선택을 취소한 경우.
      return;
    }

    final image = await imageFile.readAsBytes();

    final Reference storageReference =
    FirebaseStorage.instance.ref().child('images/image.jpg');

    final UploadTask uploadTask = storageReference.putData(image);

    await uploadTask.whenComplete(() async {
      _imageUrl = await storageReference.getDownloadURL();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Upload'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_imageUrl.isNotEmpty)
              Image.network(
                _imageUrl,
                height: 150,
                width: 150,
              ),
            ElevatedButton(
              onPressed: _uploadImage,
              child: Text('Choose Image'),
            ),
          ],
        ),
      ),
    );
  }
}
