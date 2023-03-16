import 'dart:math';
import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

Future<String> ocr() async {
  
  RecognizedText? recognizedText;

  final imagePicker = ImagePicker();

  // カメラから画像を取得するメソッド
  Future<InputImage?> getImageFromCamera() async {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        return InputImage.fromFilePath(pickedFile.path);
      }else{
        return null;
      }   
  }

  final inputImage = await getImageFromCamera();

  if(inputImage == null){
    return '';
  }else{
    final TextRecognizer textRecognizer = TextRecognizer(script: TextRecognitionScript.japanese);
    recognizedText = await textRecognizer.processImage(inputImage);
    textRecognizer.close();

    double imgWidth = 0, imgHeight = 0;

    // String text = recognizedText.text;
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement element in line.elements) {
          imgHeight = max(imgHeight, element.boundingBox.bottomRight.dy);
          imgWidth = max(imgWidth, element.boundingBox.bottomRight.dx);
        }
      }
    }

    String resStr = '[';

    // String text = recognizedText.text;
    for (TextBlock block in recognizedText.blocks) {
      print('${block.text}\n');
      for (TextLine line in block.lines) {
        for (TextElement element in line.elements) {
          double minX = element.boundingBox.topLeft.dx/imgWidth;
          double maxX = element.boundingBox.bottomRight.dx/imgWidth;
          double minY = element.boundingBox.topLeft.dy/imgHeight;
          double maxY = element.boundingBox.bottomRight.dy/imgHeight;
          String text = element.text;
          resStr += "{";
          resStr += "\"minX\":$minX,";
          resStr += "\"maxX\":$maxX,";
          resStr += "\"minY\":$minY,";
          resStr += "\"maxY\":$maxY,";
          resStr += "\"text\":\"$text\"";
          resStr += "},";
        }
      }
    }
    resStr = resStr.substring(0, resStr.length - 1);
    return '$resStr]';
  }  
}