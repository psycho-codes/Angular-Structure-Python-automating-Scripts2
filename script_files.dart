import 'dart:convert';
import 'dart:io';

void main() async {
  //! Some Scripts to handle somethings :

  //?  Run the Python script and capture its output :
  ProcessResult result = await Process.run('python3', ['script_files.py']);

  //?  Check if the Python script ran successfully :
  if (result.exitCode == 0) {
    // Parse the JSON output from the Python script
    Map<String, dynamic> data = json.decode(result.stdout);

    // Access the list of image names
    List<String> imageNames = List<String>.from(data['image_names']);

    // Print or use the image names as needed
    print('Image Names: $imageNames');
  } else {
    print('Failed to run Python script: ${result.stderr}');
  }
}


//! note : between languages in Environment unrelated  this works like charm